# =============================================================================
# 01_get_data.R
# NFL Game Prediction vs. Vegas: data acquisition and team-game aggregation
#
# Pulls schedules/results/betting lines and play-by-play from the nflverse
# project via the nflreadr package, aggregates play-by-play to one row per
# team per game, and saves small CSV snapshots to data/ so that the Quarto
# analysis is fully reproducible even after nflverse updates its data.
#
# Data sources (cite in report):
#   - Schedules, scores, closing lines: nflverse / Lee Sharpe's nfldata
#       nflreadr::load_schedules()  <https://github.com/nflverse/nfldata>
#   - Play-by-play with EPA: nflfastR via nflverse-data releases
#       nflreadr::load_pbp()        <https://github.com/nflverse/nflverse-data>
#
# Usage: run once from the project folder (08_NFL_Game_Prediction/).
#   install.packages(c("nflreadr", "tidyverse"))
#   source("01_get_data.R")
# =============================================================================

suppressPackageStartupMessages(library(tidyverse))

SEASONS <- 2015:2026
dir.create("data", showWarnings = FALSE)

# --- 1. Load raw data -------------------------------------------------------
# nflreadr is the documented route. A local-parquet fallback is included so
# the script also runs in environments where CRAN is unavailable.
if (requireNamespace("nflreadr", quietly = TRUE)) {
  games_raw <- nflreadr::load_schedules(SEASONS)
  pbp_raw   <- nflreadr::load_pbp(SEASONS)
} else {
  games_raw <- read_csv("data/raw/games.csv", show_col_types = FALSE) |>
    filter(season %in% SEASONS)
  pbp_raw <- map_dfr(SEASONS, \(y) arrow::read_parquet(
    sprintf("data/raw/pbp_%d.parquet", y),
    col_select = c(game_id, season, week, season_type, posteam, defteam,
                   play_type, epa, success, pass, rush, wp, qtr)))
}

# --- 2. Games: regular season only ------------------------------------------
games <- games_raw |>
  filter(game_type == "REG") |>
  select(game_id, season, week, gameday, weekday, gametime,
         away_team, home_team, away_score, home_score, location,
         result, total, overtime, away_rest, home_rest,
         away_moneyline, home_moneyline, spread_line, total_line,
         div_game, roof, surface, temp, wind,
         away_qb_id, home_qb_id, away_qb_name, home_qb_name)

# --- 3. Play-by-play -> team-game efficiency --------------------------------
# Keep offensive snaps (pass or run) with a valid EPA. "Neutral" EPA drops
# garbage time (win probability outside 10-90% in the 4th quarter), following
# common practice in public NFL analytics (e.g., Baldwin, Open Source
# Football) because trailing/leading teams change behavior late in blowouts.
plays <- pbp_raw |>
  filter(season_type == "REG", play_type %in% c("pass", "run"),
         !is.na(epa), !is.na(posteam)) |>
  mutate(neutral = !(qtr == 4 & (wp < 0.10 | wp > 0.90)))

team_game <- plays |>
  group_by(game_id, season, week, team = posteam, opp = defteam) |>
  summarize(
    plays        = n(),
    off_epa      = mean(epa),
    off_epa_neu  = mean(epa[neutral]),
    off_pass_epa = mean(epa[pass == 1]),
    off_rush_epa = mean(epa[rush == 1]),
    off_success  = mean(success, na.rm = TRUE),
    .groups = "drop"
  )

# Defensive numbers are simply the opponent's offensive numbers in that game.
team_game <- team_game |>
  left_join(team_game |>
              select(game_id, team = opp,
                     def_epa = off_epa, def_epa_neu = off_epa_neu,
                     def_pass_epa = off_pass_epa, def_rush_epa = off_rush_epa,
                     def_success = off_success),
            by = c("game_id", "team"))

# --- 4. Save snapshots -------------------------------------------------------
write_csv(games, "data/games.csv")
write_csv(team_game, "data/team_game_stats.csv")
writeLines(c(
  paste("Data downloaded:", format(Sys.time(), tz = "UTC", usetz = TRUE)),
  paste("Seasons:", min(SEASONS), "-", max(SEASONS)),
  if (requireNamespace("nflreadr", quietly = TRUE))
    paste("Source: nflverse via nflreadr", as.character(packageVersion("nflreadr")))
  else "Source: nflverse release files (the same files nflreadr downloads)"
), "data/DATA_SNAPSHOT.txt")

message("Saved data/games.csv (", nrow(games), " games) and ",
        "data/team_game_stats.csv (", nrow(team_game), " team-games).")
