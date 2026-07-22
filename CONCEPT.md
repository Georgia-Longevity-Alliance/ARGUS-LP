# CONCEPT — ARGUS-OS1

****Version:** 152.0
**Date:** 2026-07-22
> **v143:** V7 $81K. Sister-cell primary. All synced.

---

## 0. Hypothesis

**Centriole pedigree (∥/⟂) → centriole fate (retained/eliminated).**

In C. elegans, ~88% of cells eliminate centrioles during embryogenesis. ~68 cells retain them: 41 proliferating + 20 intestinal + 7 terminally differentiated (Kalbfuss & Gönczy 2023, PMID 37256957; EM confirmation in Croisier et al. 2025, PMID 40475707). **Gönczy (pers. comm., 21 Jul 2026):** centrioles retained in terminally differentiated cells of the adult somatic gonad likely remain for a functional reason — "to be able to build a centrosome or for some signaling function." Retained centrioles are not inert remnants. **Note:** intestinal cells later lose centrioles during endoreduplication (Lu & Roy 2014). Centrioles segregate STOCHASTICALLY at 4-cell stage (Gönczy & Balestra 2023, PMID 36988082) and in ABpr lineage (Erpf & Mikeladze-Dvali 2020). Extrapolated to full embryogenesis — testable in this project.

**Stochastic segregation makes age ORTHOGONAL to pedigree.** If which centriole goes where is random, age and pedigree are statistically independent. This eliminates age as a confound — any observed pedigree↔fate effect must come from the pedigree itself.

**Pedigree definition:** time-ordered sequence of division orientations (3D angles) of all cells the centriole has passed through. Measured via SAS-4::GFP tracking. Age measured via Dendra2::SAS-4 photoconversion (Erpf & Mikeladze-Dvali 2020).

**Two nested hypotheses:**
- **H₁ (known, Kalbfuss 2023):** pedigree correlates with centriole fate THROUGH cell type.
- **H₂ (tested here):** pedigree adds predictive power BEYOND cell type. **Primary test: sister-cell pairs.** When a cell divides symmetrically (same-type daughters — rare in C. elegans, exact frequency to be determined in Pilot), one gets the older centriole, one gets the younger. If their centriole fates diverge, pedigree is the explanation. **Caveat:** most C. elegans divisions are asymmetric (different daughter types). Pilot will quantify available same-type sister pairs.


---

## 1. Why C. elegans

| | C. elegans |
|---|:---:|
| Cell lineage | ✅ Complete (959 cells) |
| Division axes | ✅ Fixed (A/P, D/V) |
| ∥/⟂ defined | ✅ Relative to body axis |
| Fates known | ✅ For every cell |

---

## 2. Prediction

**Pedigree (∥/⟂) → centriole fate (retained/eliminated).**

Control: age → function quality (Anderson 2009).

---

## 3. Experiment

### 🆕 Iron-Based Centriole Detection (Heidenhain's Iron Haematoxylin)

> **Idea (Jaba Tqemaladze, 2026-07-21):** Heidenhain's iron haematoxylin — the method Boveri used to discover centrioles in 1900 (Scheer 2014, PMID 25047623). Unlike GFP, it does not require transgenic lines. The centriole retains iron after differentiation, when surrounding structures are already destained.

**Why this matters for ARGUS:**
1. **Routine histological method** — no transgenic constructs required
2. **Stains the entire centriole** — not only proteins (SAS-4, Centrin1) but also the iron-binding core
3. **Independent of GFP** — can verify GFP data with an orthogonal method
4. **$5-10 per sample** — vs $500+ for transgenic lines

**Protocol (adapted for C. elegans whole-mount):**
| Step | Action | Time |
|:---:|---------|:----:|
| 1 | Fixation: Bouin's fluid or 4% PFA + 2.5% glutaraldehyde | 30 min |
| 2 | Permeabilization: freeze-crack or acetone | 10 min |
| 3 | Mordant: 2.5% iron-ammonium alum | 1-12 h |
| 4 | Staining: 0.5% haematoxylin | 1-12 h |
| 5 | Differentiation: 2.5% iron-ammonium alum (microscope control) | 5-30 min |
| 6 | Dehydration + mounting | 30 min |

**Prediction:** Centrioles visible as black dots even in cells where GFP signal of SAS-4/Centrin1 is lost.

**Reference:** Scheer 2014 (PMID 25047623), Fig. 7b.

---

### Pilot Phase (3 months) — Before Main Experiment

| Step | Action |
|:---:|--------|
| P1 | **Stochasticity validation.** Test random segregation at ALL stages (not just 4-cell + ABpr). Use Dendra2::SAS-4 photoconversion at 8-, 16-, 32-, 64-cell stages. 10 embryos. **Criterion:** if segregation is non-random at any stage → age becomes confound → must stratify by age. |
| P2 | **Phototoxicity ceiling.** Determine max imaging duration without viability loss. Metrics: division rate, morphology score, hatching rate. Test 488nm + 561nm with 60×/1.2 NA WI at 5-min Z-stack intervals. Find safe duty cycle. |
| P3 | **Photobleaching assay.** Measure SAS-4::GFP signal decay over 3h. If >30% loss → switch to sparse temporal sampling or increase laser power budget. |
| P4 | **Marker cross-validation.** Double transgenic line: Centrin1-GFP + SAS-4::mCherry in same embryos. Confirm both markers track same centrioles. 5 embryos. |
| P5 | **Same-type sister pair quantification.** From Sulston 1983 lineage map: count divisions where both daughters have identical cell type at hatching. If <40 pairs in 100 embryos → switch to Plan C (within-type pedigree comparison, see Analysis). |
| P6 | **Pedigree feature extraction.** Define 5 quantitative metrics: (a) fraction of ∥ divisions, (b) mean 3D angle change, (c) variance of angles, (d) number of orientation switches, (e) cumulative angular path. Test independence from cell type on synthetic data. |

### Main Experiment (GFP)

| Step | Action |
|:---:|--------|
| 1 | C. elegans embryo, Centrin1-GFP + SAS-4::mCherry + histone::BFP (triple transgenic). |
| 2 | Immobilization: microfluidic chip or agarose pad. **Second modality: phase contrast** for cell boundary tracking (no additional light stress). |
| 3 | 3D time-lapse from zygote to ~100 cells (~3h, **25°C standard**). **Adaptive illumination — not continuous.** Duty cycle from Pilot P2. **Dark control: parallel embryos, lasers OFF.** |
| 4 | **Pedigree: 5 metrics per centriole.** Full history + extracted features. Pilot validates angle measurement (5 embryos) with fiducial bead calibration. |
| 5 | **Controls:** (a) **Negative:** RNAi-PLK-4 embryos (centrioles not formed). (b) **Positive:** gut lineage (E cells — known centriole loss at endoreduplication, Lu & Roy 2014). |
| 6 | **Primary test: within-type pedigree comparison.** For each cell type with ≥5 cells, compare centriole fate by pedigree features. Mixed-effects logistic regression: fate ~ pedigree_features + age + (1|embryo) + (1|cell_type). **Plan C (if <40 same-type sister pairs):** compare centrioles within same cell type — does pedigree predict fate variance? **Power: N=100 embryos for OR≥1.5 (α=0.05, β=0.2). Bayesian hierarchical model as supplement. Blinding: analyst blinded to pedigree. Pre-registration: OSF.** |

---

## 4. Budget (ARGUS V7)

| Item | $ |
|------|--:|
| 60×/1.2 NA WI objective (Nikon CFI Plan Apo, new) | 13,500 |
| sCMOS camera (Hamamatsu ORCA-Fusion BT, new) | 18,500 |
| 488 nm LED + 561 nm LED | 800 |
| Phase contrast condenser + objectives | 2,500 |
| Microfluidic chip + pressure system | 2,500 |
| Frame + stage: Aluminum 7075 + thermal stabilization | 4,000 |
| AI: Jetson AGX Orin 64GB (275 TOPS, local tracking) | 2,000 |
| Night vision: IR LED 850nm + NoIR camera + notch filters | 500 |
| C. elegans strains (triple transgenic + RNAi) + reagents + consumables | 3,000 |
| PI salary (25% FTE, 12 months) | 15,000 |
| Engineer salary (50% FTE, 12 months) | 30,000 |
| Lab space rental (Abastumani, 12 months) | 5,000 |
| Contingency (30%) | 29,000 |
| **Hardware subtotal** | **~47,300** | |
| Personnel + lab | 50,000 |
| Contingency (30%) | 29,000 |
| **Total (ARGUS V7)** | **~126,000** |

| 3-axis micromanipulator ×2 + injector — AI-controlled | 8,000 |
| **Total (Phase 3 equipment)** | **~71,000** |
| **Grand total (all phases)** | **~225,000** |

### Comparison with equivalent systems

| System | Type | 3D time-lapse | Centriole tracking | Open | Price |
|--------|------|:---:|:---:|:---:|--:|
| **ARGUS V0 (Alex)** | OpenFlexure | ❌ | ❌ | ✅ | **$930** |
| **ARGUS V6** | OpenFlexure | ❌ | ❌ | ✅ | **$3-4K** |
| **ARGUS V7** | OpenFlexure + WI + sCMOS + AI + phase | ✅ | ✅ | ✅ | **$47K (HW)** |

---

## 5. Key References

**Reproducibility:** All code, protocols, and raw data on GitHub + Zenodo (CC-BY). Protocol on bioRxiv before data collection. **Data:** Raw images → BioImage Archive. Processed → Zenodo. Code → GitHub. **Independent replication:** N2 strain (baseline) + CB4856 (Hawaiian) for cross-strain validation. **Timeline:** Pilot (2 months) → Main (4 months) → Analysis (2 months). **Biosafety:** BSL-1. C. elegans — non-pathogenic. 488nm LED — class 1 laser product.

**Limitations:** (1) Stochasticity confirmed only for 4-cell stage + ABpr lineage — **Pilot P1 tests all stages** before main experiment. (2) Sister-cell pairs are rare (~5% of divisions) — Pilot P5 quantifies; **Plan C** uses within-type pedigree comparison if <40 pairs. (3) Intestinal cells later lose centrioles (Lu & Roy 2014, PMID 25360893) — not permanent retention; accounted as positive control. (4) C. elegans-specific — requires cross-species validation. (5) Multicollinearity risk between pedigree and cell_type — mitigated by within-type comparison (Plan C) + VIF monitoring. (6) Phototoxicity from 3h 3D imaging — Pilot P2 determines safe duty cycle. (7) Heidenhain's haematoxylin not validated for C. elegans centrioles — Pilot P6 validates with anti-SAS-4 co-stain.

| # | Reference | PMID |
|---|-----------|------|
| 1 | Sulston & Horvitz (1977) — post-embryonic lineage | 838129 |
| 2 | Sulston et al. (1983) — embryonic lineage | 6684600 |
| 3 | Kalbfuss & Gönczy (2023) — 88% eliminate, cell fate→centriole fate, Sci Adv | 37256957 |
| 4 | Kalbfuss, Berger & Gönczy (2023) — centriolar protein mapping, Dev Biol | 37414202 |
| 5 | Gönczy & Balestra (2023) — stochastic segregation | 36988082 |
| 6 | Anderson & Stearns (2009) — age → cilium timing (EXPERIMENTAL, NIH/3T3) | 19682908 |
| 7 | Erpf & Mikeladze-Dvali (2020) — Dendra2::SAS-4 centriole tracking | DOI:10.17912/micropub.biology.000286 |
| 8 | Balestra et al. (2015) — SAS-4::GFP stability in embryos, Cell Research | 25892868 |
| 9 | Yamashita et al. (2007) — Drosophila mGSC | 17255513 |
| 10 | Januschke et al. (2011) — Drosophila NB | 21407209 |
| 11 | Wang et al. (2009) — mouse radial glia | 19829375 |
| 12 | Coffman et al. (2016) — MT asymmetry in C. elegans, MBoC | 27733624 |
| 13 | Kalbfuss & Gönczy (2023) — centriole elimination review, Open Biol | 37963546 |
| 14 | Croisier et al. (2025) — EM confirms centrioles in rectal cells, microPublication | 40475707 |

| 15 | Lu & Roy (2014) — centriole loss in intestine during endoreduplication | 25360893 |

---

*C. elegans only. Pedigree = 5 metrics. V7. $126K. 15 refs. Pilot validates stochasticity at all stages.*
