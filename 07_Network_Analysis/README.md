# Network Analysis & Location-Allocation Modeling
## Pizza Delivery Optimization in Giles County, Virginia
## GEO 365: Advanced GIS | University of Richmond

### Project Overview
This project optimizes pizza delivery operations and facility location in Giles County, Virginia using network analysis and location-allocation modeling. Current operations require 47-mile routes consuming 65-75 minutes per ingredient delivery cycle. Analysis reveals 15% geographic coverage gaps and significant facility-location suboptimality. Optimal facility placement would increase demand capture by 18-22% and reduce average delivery distance by 12-15%.

The analysis employs network datasets, service area analysis, and location-allocation modeling to identify operational inefficiencies and strategic opportunities.

### Business Problem
Pizza delivery operates under tight margin constraints requiring operational efficiency and geographic coverage. This analysis optimizes:
1. Current route efficiency and impact of disruptions
2. Service coverage gaps and geographic accessibility
3. Optimal location for new facility expansion
4. Ideal configuration of existing facilities

### Key Findings
- **Current Route:** 47.2 miles, 68 minutes to supply all 6 locations
- **Barrier Impact:** VDOT roadwork adds 14% to route distance (6.6 additional miles)
- **Coverage:** 87% of county within 15-minute delivery range; 13% gap in southern mountains
- **Redundancy:** Central county shows 3-way overlap; inefficient demand clustering
- **New Facility Opportunity:** Southwestern location captures 287 demand points (14.2% of market) while addressing underserved area
- **Optimal Configuration:** Existing locations near-optimal but room for 7-18% efficiency improvement

### Methods

**Network Dataset Construction:** Road segment attributes calculated—distance (miles), speed limits (mph), travel time (minutes)

**Route Analysis:** Sequential visits to all six locations optimized for minimum distance; barrier analysis with VDOT roadwork simulations

**Service Area Analysis:** 15-minute drive-time polygons generated for each pizzeria using network solver; three polygon geometries tested (dissolve, overlap, split)

**Location-Allocation Modeling:** 
- Demand assignment analysis for existing facilities
- Optimal 7th location identification
- Greenfield analysis for ideal 6-location configuration

**Skills Demonstrated:**
- Network dataset creation & configuration
- Route finding & optimization
- Barrier implementation
- Service area modeling
- Location-allocation modeling (P-Median & Maximum Coverage)
- Demand-weighted spatial analysis
- Address geocoding

### Files in This Folder
- `07_Network_Analysis_Report.md` — Full professional analysis report
- `07_Network_Analysis_Map1.jpg` — Route network and service areas
- `07_Network_Analysis_Map2.jpg` — 15-minute service area coverage by facility
- `07_Network_Analysis_Map3.jpg` — Optimal location-allocation results
- `README.md` — This file

### Data Sources

**Road Network Data:**
- Virginia GIS Clearinghouse
- https://vgin.vdem.virginia.gov/pages/clearinghouse
- Giles County road shapefile with speed limit attributes
- 2023 update

**Existing Pizza Locations:**
- Google Maps & field verification
- Geocoded addresses for 6 facilities in Giles County
- 99% accuracy confidence from address matching

**Demand Points:**
- Road network junctions (n=1,247)
- Proxy for population distribution in county
- Verified against census population distribution data

**Geographic Boundaries:**
- Giles County polygon boundary
- Virginia county-level data
- U.S. Census Bureau Tiger/Line Files

### What I Learned
- How to construct and build network datasets in ArcGIS Pro
- Route optimization considering distance, time, and real-world barriers
- Service area analysis for facility planning and market analysis
- Location-allocation modeling for optimal facility siting
- Importance of demand-weighted analysis in location decisions
- Practical application of GIS to business problems
- How network constraints shape accessibility and market coverage

---

**For GIS Consulting:** Shows expertise in network analysis, service planning, and location-allocation modeling—critical tools for retail, emergency services, and logistics.

### For Graduate Programs (MS CS / Data Science)

This project applies network algorithms and operations research optimization to real-world 
facility siting—demonstrating graduate-level problem-solving in spatial computing.

Key graduate-level competencies demonstrated:

- **Network algorithms:** Building routable network datasets, implementing route optimization, 
  and applying shortest-path algorithms—fundamental to computer science and geographic information systems
- **Optimization modeling:** Location-allocation problems represent classic operations research, 
  with applications in logistics, urban planning, and emergency services
- **Multi-objective optimization:** Balancing competing goals (cost/distance vs. coverage vs. 
  demand fairness)—reflecting real-world complexity beyond single-metric optimization
- **Spatial problem-solving:** Translating business constraints into computational models 
  (barriers, service areas, demand points) and interpreting results for decision-making
- **Scalability & efficiency:** Understanding how algorithm choice affects performance on 
  large networks (1,247 nodes, multiple competing objectives)

This analysis exemplifies how computer science methods solve geographic optimization problems 
and how GIS algorithms power logistics, urban planning, and technology infrastructure decisions—
central to geospatial data science graduate programs.

*Analysis completed: April 2025*
