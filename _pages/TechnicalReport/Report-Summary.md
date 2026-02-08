# Additive Manufacturing and Topology Optimisation in Gearbox Design

**Author:** Edoardo Rusconi  
**Institution:** School of Engineering, University of Warwick  
**Submission:** Technical report for BEng Mechanical Engineering  
**Date:** March 2025

---

## Abstract (rewritten)
This report studies topology optimisation and infill optimisation to improve a knee powered orthosis, targeting weight reduction (comfort) and increased gear stiffness (reduced backlash).  
A FEM-driven workflow combining MATLAB automation and Abaqus simulations characterises gyroid TPMS lattice stiffness across many infill settings, building regression models for Young’s modulus.  
Results are compared with nTopology homogenisation, and the work reports optimised structures achieving up to 25.2% weight savings versus the original geometry.

---

## Table of contents (high level)
1. Introduction  
2. Literature Review  
3. Methodology  
4. Results and Discussion  
5. Conclusion and Recommendations  
Appendices: Extended plots/calculations, MATLAB code/functions, engineering drawings.

---

## 1. Introduction
### 1.1 Background
The report frames knee powered orthoses within rehabilitation robotics and mobility impairment, arguing that device weight and inertia strongly affect user comfort and adoption.

### 1.2 Research justification
A key motivation is that reducing mass via topology optimisation can improve comfort, and improving stiffness helps limit backlash effects in geared systems.

### 1.3 Objectives
1. Topology and infill optimisation: reduce weight; maximise gear stiffness/back-drivability to mitigate backlash.  
2. Infill density characterisation and homogenisation: iterative FEM estimation of lattice properties; validate using TO and the characterised data.  
3. Adapt an open-source quasi-direct drive concept (OpenTorque) into an optimised knee PO design; includes selecting and validating gear geometry and a 5:1 gear ratio, and aiming for very low manufacturing cost.

---

## 2. Literature review (key points)
### 2.1 Patent analysis
A patent search summary is used to justify a gap in actuator-based knee orthosis designs and especially designs that include 3D printable components.

### 2.2 Single-stage gear systems
Cycloidal drives and harmonic drives are introduced and assessed, but are argued to be unsuitable for the target 5:1 reduction and/or due to weight and hysteresis considerations in this application.  
Planetary gearboxes are discussed as suitable for compactness and the intended ratio.

### 2.3 Gait cycle and relevance
The gait cycle is described (stance and swing phases) and linked to orthosis design requirements.

### 2.4–2.5 3D printed braces and powered knee orthoses
Examples of passive and powered knee devices are presented, including materials/manufacturing references to 3D printing approaches.

### 2.6 TPMS infill (gyroid focus)
A TPMS is described through level-set / inequality forms, with gyroid as the key structure of interest.  
Infill percentage is treated as adjustable via level-set or bounded-volume formulation.

### 2.8 FEM and Abaqus element types
The report outlines relevant element types (e.g., first/second-order hex and tet elements) and notes practical meshing trade-offs for complex lattice geometries.

### 2.9 Topology optimisation (SIMP and practicalities)
SIMP-style TO and the role of penalisation and filtering are discussed, including references to “2.5D” approaches and manufacturability constraints.

---

## 3. Methodology (workflow-level)
### 3.1 Actuator requirements
Actuation requirements for activities such as walking and squatting are compiled and used to justify design targets and comparisons.

### 3.2 Open QDD / OpenTorque design analysis
The actuator concept is evaluated with attention to material modelling, unit systems, and homogenisation considerations.

### 3.3 Gear geometry selection and validation
Gear geometry is selected and validated using established methods (e.g., Lewis bending stress approach is introduced for initial validation).

### 3.4 Lattice properties code methodology
A MATLAB + Abaqus pipeline is used to generate and test lattice samples across multiple infill conditions, with automation producing many simulations and figures per run.

### 3.5 Variable infill density methodology
Two approaches are described: stress-based variable infill assignment and a topology-optimisation-driven variable infill method (including nTopology workflow).

---

## 4. Results and discussion (high-level)
The report presents plots and regression-style interpretations for elastic properties (e.g., Young’s modulus) across infill percentages, alongside practical issues such as stress concentrations and mesh distortion.  
nTopology homogenisation is used as a comparison/validation reference and includes discussion of an orthotropic stiffness matrix representation.  
Optimised designs are validated and a “final design” is presented with renders and 3D-printed outcomes.

---

## 5. Conclusion and recommendations (condensed)
The work demonstrates an automated simulation-based approach to characterising and using variable-density lattice/TPMS infills within an optimisation pipeline.  
A key reported outcome is up to 25.2% weight saving compared to the original geometry, supporting the feasibility of lighter powered orthosis components.  
Limitations and future work directions are noted, including modelling/meshing constraints and the need for further validation.

---

## Image summaries (from the document’s figure list and nearby captions)

> Note: These summaries are based on the captions/list of figures present in the PDF extract (not pixel-level inspection).

- **Fig. 1.1**: 3D printed powered knee orthosis examples (multiple designs).  
- **Fig. 2.1**: Patent analysis distilled from a large search result set; includes technology breakdown and filings per year.  
- **Fig. 2.2**: Cycloidal gearbox schematic/illustration.  
- **Fig. 2.3**: Harmonic drive design schematic/illustration.  
- **Fig. 2.4**: Gear geometries (e.g., spur gear geometry; assembly view).  
- **Fig. 2.5**: Hysteresis in a harmonic drive (conceptual/illustrative figure).  
- **Fig. 2.6**: Experimental gait cycle using Vicon Nexus; phases and cycle plot/diagram.  
- **Fig. 2.7**: Examples of 3D printed passive knee braces (three designs).  
- **Fig. 2.8**: 3D printed powered knee orthosis example: braces, actuator, and full assembly in use.  
- **Fig. 2.9**: Delaunay triangulation and Voronoi diagram concepts for mesh generation (multi-panel).  
- **Fig. 2.10**: Piecewise Linear Complex (PLC) mesh generation steps including tetrahedralisation and refinement.  
- **Fig. 2.11**: Topology-optimised variable infill TPMS gyroid (multi-panel).  
- **Fig. 2.12**: Open-source actuator comparison (OpenQDD vs OpenTorque), gears highlighted.  
- **Fig. 2.13**: Abaqus element types (e.g., C3D8, C3D20, C3D10).  
- **Fig. 2.14**: Effect of filter radius on TO results for different domain sizes (before/after filtering).  
- **Fig. 2.15**: 3D print sample/direction illustration and an ISO 527 tensile sample sketch.  
- **Fig. 2.16**: “2.5D” topology optimisation results with varying penalisation and resulting microstructure.  
- **Fig. 2.17**: Gyroid metal structure failure example; arrows indicate failed layers (compression test and FEA stress distribution).  
- **Fig. 3.1–3.4**: Iso-surface views, node sets, and boundary-condition setup for simulations.  
- **Fig. 3.5**: Stress-based variable infill distribution methodology diagram.  
- **Fig. 3.6**: nTopology topology-optimisation methodology diagram.  
- **Fig. 4.1–4.8**: Plots across infill percentage (Poisson’s ratio, Young’s modulus fit quality, stress concentration notes, distorted elements, CPU load, tracked nodes, stress by infill).  
- **Fig. 4.9–4.13**: Lattice displacement/stress visuals and homogenisation comparisons; stiffness matrix visualisations and comparisons between approaches.  
- **Fig. 4.14–4.17**: Gear validation meshing, actuator renders, 3D prints, and print-to-model comparison.  
- **Appendix figures (A.*, D.*)**: Extended plots/calculations and engineering drawings including labelled assemblies, technical drawings, and exploded views.

---

## End summary (for quick reading)
This report develops and applies an automated MATLAB + Abaqus FEM workflow to characterise gyroid TPMS lattice stiffness over many infill settings, then uses those results to support topology/infill optimisation for a knee powered orthosis actuator/gearbox concept.  
It positions weight reduction (comfort) and stiffness improvement (backlash control) as central design drivers, compares an iterative simulation approach with nTopology homogenisation, and reports up to 25.2% weight savings versus the original geometry in optimised structures.