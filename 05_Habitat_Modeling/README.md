# Habitat Suitability Modeling for Bicknell's Thrush in New England
## GEO 365: Advanced GIS | University of Richmond

### Project Overview
This project models suitable habitat for the endangered Bicknell's Thrush across New England by analyzing occurrence data and creating a deterministic habitat suitability model. Using elevation and land cover data, the project identifies critical conservation areas where this rare high-elevation specialist species is most likely to be found.

The analysis captures 93.2% of documented occurrence points within modeled habitat, identifying 5,561 km² of suitable habitat concentrated in Northern Appalachian high elevations.

### Research Question
Where is suitable habitat for the Bicknell's Thrush located across New England, and what percentage of documented occurrences fall within modeled habitat ranges?

### Key Findings
- **Habitat Area:** 5,561 km² of suitable habitat identified across New England
- **Geographic Concentration:** 82% of habitat in Vermont and New Hampshire
- **Elevation Threshold:** Strict dependence on forests above 600m elevation
- **Land Cover Specificity:** Spruce-fir forest type, no sightings in alternative forest types
- **Model Validation:** 93.2% of occurrence points fall within refined (buffered) suitable habitat

### Methods

**Occurrence Analysis:** Spatial join of 487 occurrence records (1995-2019) to state boundaries; summary statistics by state

**Habitat Modeling:** Deterministic approach using conditional rasters—elevation ≥600m AND spruce-fir forest type (NLCD class 42)

**Model Refinement:** 200m buffer applied to suitable habitat polygons to capture edge cases; validation against known occurrences

**Skills Demonstrated:**
- Raster analysis & spatial modeling
- Conditional logic (Raster Calculator)
- Spatial join & summary statistics
- Model validation & refinement
- Professional cartography

### Files in This Folder
- `05_Habitat_Modeling_Report.md` — Full professional analysis report
- `05_Habitat_Modeling_Map1.jpg` — Habitat suitability map with occurrence points
- `README.md` — This file

### Data Sources

**Species Occurrence Data:**
- Global Biodiversity Information Facility (GBIF)
- https://www.gbif.org/
- ~487 records, 1995-2019

**Elevation Model:**
- OpenTopography (SRTM data)
- https://cloud.sdsc.edu/v1/AUTH_opentopography/
- 200m resolution, resampled

**Land Cover Classification:**
- National Land Cover Database (NLCD) 2016
- Multi-Resolution Land Characteristics Consortium (MRLC)
- https://www.mrlc.gov/data
- 200m resolution

**Administrative Boundaries:**
- U.S. Census Bureau
- New England state polygon data

### What I Learned
- How to construct and validate habitat suitability models using raster analysis
- Application of conditional statements in spatial analysis (Raster Calculator)
- Importance of model validation against field data
- How buffering and refinement improve model performance
- Quantifying spatial analysis results for conservation planning

---

**For Data Analyst Roles:** Shows ability to model spatial phenomena, validate results against real-world data, and communicate complex analyses through professional cartography.

**For GIS/Environmental Roles:** Demonstrates habitat modeling expertise, conservation planning capabilities, and understanding of endangered species assessment methodologies.

### For Graduate Programs (MS CS / Data Science)

This project demonstrates foundational computational thinking for spatial data science. 
The deterministic modeling approach—using conditional logic, raster algebra, and validation 
workflows—parallels algorithm design and computational problem-solving. This work shows:

- **Algorithmic thinking:** Conditional statements, spatial joins, and set operations 
  applied to real-world conservation problems
- **Validation & rigor:** Systematic evaluation of model performance (93.2% accuracy) 
  against ground-truth data—essential for graduate-level research
- **Domain-specific computing:** Understanding how GIS operations map to computational 
  concepts, bridging geography and computer science
- **Quantitative analysis:** Moving from qualitative ecological understanding to 
  quantitative habitat extent metrics (5,561 km²)

This project represents the intersection of geospatial analysis and computational methods 
that defines modern data science graduate work.

*Analysis completed: January 2025*
