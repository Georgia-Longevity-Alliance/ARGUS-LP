# PARAMETERS — ARGUS-OS1

**Version:** 153.0  
**Date:** 2026-07-22

## Model

| Parameter | Value |
|-----------|-------|
| Organism | C. elegans (N2 Bristol, hermaphrodite) |
| Stage | Embryo, zygote → ~100 cells (~3h at 25°C) |
| Cells retaining centrioles | 41 proliferating + 20 intestinal + 7 terminally differentiated = **68 total** |
| Cells eliminating centrioles | ~490 (~88%) |
| Pedigree features | 5 metrics: (a) fraction ∥ divisions, (b) mean 3D angle change, (c) angle variance, (d) orientation switches count, (e) cumulative angular path |

## Platform

| Parameter | Value |
|-----------|-------|
| Version | ARGUS V7 |
| Objective | 60×/1.2 NA WI (new) |
| Camera | sCMOS (Hamamatsu ORCA-Fusion BT) |
| Second modality | Phase contrast (cell boundary tracking) |
| Lasers | 488 nm + 561 nm |
| Immobilization | Microfluidic chip |
| AI agent | Jetson AGX Orin 64GB (275 TOPS) — local, autonomous |
| Night vision | IR LED 850nm + 2× NoIR cameras |
| Enclosure | Glove-box isolator (acrylic, HEPA H13, neoprene gloves) |
| Markers | Centrin1-GFP + SAS-4::mCherry + histone::BFP (triple transgenic) |

## Experiment

| Parameter | Value |
|-----------|-------|
| Pilot N | 10 embryos (stochasticity + phototoxicity + marker validation + pair quantification) |
| Main N | 100 embryos |
| Duration | ~3h per embryo |
| Temperature | 25°C |
| Phototoxicity ceiling | Pilot P2: duty cycle optimization, viability check |
| Controls | Negative: RNAi-PLK-4. Positive: gut lineage (E cells, known centriole loss). Dark: parallel embryos, lasers OFF. |
| Analysis | Plan A: sister-cell pairs (if ≥40). Plan C: within-type pedigree comparison. Mixed-effects logistic regression + Bayesian hierarchical model. |
| Pre-registration | OSF |
| Budget | ~$126,000 (hardware: ~$47,300 + personnel: $50,000 + contingency 30%: $29,000) |
