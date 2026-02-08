---
title: Computational Materials & FEA Portfolio
layout: single
permalink: /portfolio/computational-materials-and-FEA-portfolio
collection: portfolio
entries_layout: grid
#classes: wide # Remove if adding sticky TOC
header:
  overlay_image: /_pages/ComputationalMaterials&FEAPortfolio/Computational-Materials-FEA-Portfolio-Splash.png
  image_description: "FEA simulation visualisation"
pagination:
  enabled: true
tags: # Tags must be an exact match to what is in "tag list.txt", new tags need to be added there as well the first time.
  - Finite Element Analysis (FEA)
  - Abaqus
  - nTop
  - Coding
author_profile: true
toc: true
toc_sticky: true
toc_label: "Contents"
toc_icon: "cog"
---

# Computational Materials & FEA Portfolio

Applied energy-based damage and Hashin failure criteria in explicit FEA simulations to model fibre-reinforced composite fracture and damage evolution in static loading and machining.

## Carbon Rod Machining Simulation

This explicit simulation demonstrates the cutting of a carbon fiber-reinforced composite rod using energy-based material deletion on the mesh. The element deletion models the material removal process during machining.

<iframe width="560" height="315" src="https://www.youtube.com/embed/03zrX6TpdE4?loop=1&playlist=03zrX6TpdE4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="width: 100%; height: 56.25%; min-height: 315px; border: none;"></iframe>

## Explicit Gear Simulation

This simulation demonstrates a driver gear driving an entire geartrain using explicit FEA analysis. The dynamic contact interactions and stress distribution are modeled to understand the mechanical behavior of the gear assembly under operational conditions. Gears are rigid body and frictionless.

<iframe width="560" height="315" src="https://www.youtube.com/embed/YU0Va2vOH3I?loop=1&playlist=YU0Va2vOH3I" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="width: 100%; height: 56.25%; min-height: 315px; border: none;"></iframe>

---

## Lattice and Material Characterisation

Full methodology and results are detailed in the companion technical report: [Additive Manufacturing and Topology Optimisation in Gearbox Design](/portfolio/undergraduate-dissertation).

### TPMS Lattice Material Studies

Exploratory work creating triply periodic minimal surface (TPMS) lattices in nTop and extracting homogenized properties for use in downstream FEA workflows.

### Stress-Driven TPMS Geometry

Created a TPMS unit cell guided by stress distribution fields, aligning lattice thickness with load paths to minimise mass while retaining stiffness in critical regions.

![TPMS unit cell driven by stress distribution](/_pages/ComputationalMaterials&FEAPortfolio/TPMS-from-stress-distribution.png)

### Topology-Optimized TPMS

Derived a TPMS lattice from a topology-optimized solid, translating density contours into periodic minimal surfaces to capture the same load-bearing intent in a manufacturable lattice.

![TPMS lattice derived from topology optimization](/_pages/ComputationalMaterials&FEAPortfolio/TPMS-from-Topology-Optimisation.png)

### Homogenization Workflow

Built a homogenization pipeline to extract equivalent orthotropic properties from TPMS samples, enabling reduced-order lattice representation in macro-scale FEA models.

![Homogenization setup for TPMS samples](/_pages/ComputationalMaterials&FEAPortfolio/TPMS-Homogenisation.png)

### Homogenized Property Field

Applied the homogenized material tensors back into nTop to visualize spatially varying stiffness and validate consistency with the detailed lattice response.

![nTop visualization of homogenized TPMS properties](/_pages/ComputationalMaterials&FEAPortfolio/nTop-TPMS-Homogenised.png)