# Habitat Suitability Modeling for Bicknell's Thrush in New England
## GEO 365: Advanced GIS | University of Richmond

### Project Overview
This project models suitable habitat for the endangered Bicknell's Thrush across New England by analyzing occurrence data and creating a deterministic habitat suitability model. Using elevation and land cover data, the project identifies critical conservation areas where this rare high-elevation specialist species is most likely to be found.

### Research Question
Where is suitable habitat for the Bicknell's Thrush located across New England, and what percentage of documented occurrences fall within modeled habitat ranges?

### Dataset
- **Species Occurrence Data:** Bicknell's Thrush sightings (1995-2019) from GBIF (Global Biodiversity Information Facility)
- **Elevation Model:** 200m resolution Digital Elevation Model from OpenTopography
- **Land Cover:** National Land Cover Database (NLCD 2016), 200m resolution from MRLC
- **Study Area:** New England states (Maine, Vermont, New Hampshire, Massachusetts, Rhode Island, Connecticut)

### Methods

#### 1. Occurrence Point Analysis
- Spatial join to assign observations to states
- Summary statistics to determine distribution of sightings across New England
- Identified elevation clustering and state-level occurrence patterns

#### 2. Deterministic Habitat Modeling
- Created conditional rasters using Raster Calculator: elevation > 600m and spruce-fir forest land cover type
- Multiplied conditional rasters to identify pixels meeting both criteria
- Validated model against known occurrence points

#### 3. Model Refinement
- Buffered suitable habitat polygons by 200m (one raster pixel) to capture edge cases
- Used Select by Location to quantify improvement in occurrence point coverage
- Calculated total suitable habitat area in square kilometers

### Key Findings

**Habitat Characteristics:**
- Bicknell's Thrush concentrated in high-elevation spruce-fir forests
- Primary occurrences in Vermont and New Hampshire mountains
- Model identified 5,561 km² of suitable habitat across New England

**Model Performance:**
- Deterministic model captured 93.2% of recorded occurrence points within buffered suitable habitat
- Geographic concentration in Northern Appalachian high elevations validates ecological knowledge

**Conservation Implications:**
- Suitable habitat limited to montane regions above 600m elevation
- Climate change and forestry pose significant threats to this restricted habitat range
- Model provides quantitative basis for conservation priority areas

### Technical Implementation

**Software & Tools:**
- ArcGIS Pro — Spatial analysis and modeling
- Raster Calculator — Conditional statements for habitat suitability
- Raster to Polygon — Vector conversion for analysis
- Buffer & Select by Location — Model refinement and validation

**Key Analysis Steps:**
1. Spatial join of occurrence points to state boundaries
2. Clipping and hillshade visualization of elevation data
3. Conditional raster creation for elevation and land cover
4. Raster algebra (multiplication) to identify suitable habitat
5. Extract values to points and selection by attributes for validation
6. Buffer and dissolve operations for model improvement

### Files in This Folder
- Lab2_Instructions.docx — Original assignment prompt with full methodology
- Woods_Lab2done.docx — Completed analysis and findings
- Dem_Model_Map.jpg — Elevation and occurrence point visualization
- IV_Maps.jpg — Independent variable analysis (elevation + land cover)

### What I Learned
- How to construct and validate habitat suitability models using raster analysis
- Application of conditional statements in spatial analysis (Raster Calculator)
- Importance of model validation against field data
- How buffering and refinement improve model performance
- Quantifying spatial analysis results for conservation planning

### Skills Demonstrated
✅ Raster Analysis & Spatial Modeling
✅ Deterministic Habitat Suitability Modeling
✅ Spatial Join & Summary Statistics
✅ Raster Calculator & Conditional Logic
✅ Model Validation Against Field Data
✅ Cartography & Professional Map Production
✅ Quantitative Spatial Analysis

---

**From:** GEO 365: Advanced GIS coursework | **Completed:** January 2025

**For Data Analyst Roles:** Shows ability to model spatial phenomena, validate results against real-world data, and communicate complex analyses through professional cartography.

**For GIS/Environmental Roles:** Demonstrates habitat modeling expertise, conservation planning capabilities, and understanding of endangered species assessment methodologies.

