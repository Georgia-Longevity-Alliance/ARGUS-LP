# CONCEPT — ARGUS-OS1

**Version:** 112.0 (ENGLISH)
**Date:** 2026-07-21
> **v112:** All files in English.
> **v111:** Comparison table — ARGUS V8 vs LLSM/Nikon/IncuCyte.
> **v110:** Pedigree threshold. Light-sheet V8.

---

## 0. Hypothesis

**Centriole pedigree (∥/⟂) → centriole fate (retained/eliminated).**

In C. elegans, ~88% of cells eliminate centrioles during differentiation. ~68 cells retain them (Kalbfuss & Gönczy 2023, PMID 37256957). Centrioles segregate STOCHASTICALLY (Gönczy & Balestra 2023, PMID 36988082) — any pedigree↔fate correlation cannot be a segregation artifact.

MTOC inactivation protects centrioles from elimination (Magescas & Feldman 2025, preprint). This provides mechanistic support.

**Question:** can centriole fate be predicted from its pedigree?

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

| Step | Action |
|:---:|--------|
| 1 | C. elegans embryo, Centrin1-GFP + histone::GFP |
| 2 | Immobilization: microfluidic chip or agarose pad |
| 3 | 3D time-lapse from zygote to ~100 cells (~3h, 30°C) |
| 4 | **Pedigree: spindle angle relative to A/P axis. Threshold: <30° = ∥, >60° = ⟂** |
| 5 | Centriole fate — retained or eliminated |
| 6 | **Mixed-effects logistic regression:** fate ~ pedigree + age + (1|embryo). N = 30-50 embryos. |

---

## 4. Budget

| Item | $ |
|------|--:|
| 60×/1.2 NA WI objective (new) | 8,000 |
| sCMOS camera (Hamamatsu ORCA) | 8,000 |
| 488 nm laser (single-mode) | 2,000 |
| 561 nm laser | 2,000 |
| Light-sheet optics (cyl. lens, scanning mirror, tube lens, dichroics, filters) | 5,000 |
| 3-axis motorized stage + controller | 2,500 |
| Anti-vibration optical table | 3,000 |
| Temperature-controlled enclosure (PID) | 2,000 |
| Microfluidic chip + pressure system | 2,500 |
| OpenFlexure base (ASA, motors) | 800 |
| **AI agent: Jetson AGX Orin 64GB (275 TOPS)** | 2,500 |
| **Night vision: IR LED 850nm + 2× NoIR cameras** | 500 |
| **Internal surveillance: 2× cameras + LED lighting** | 400 |
| **Glove-box isolator (acrylic, HEPA H13, neoprene gloves)** | 5,000 |
| C. elegans strains + reagents + consumables | 1,500 |
| Data analysis (compute + software) | 5,000 |
| Contingency (20%) | 10,200 |
| **Total** | **~61,000** |

### Comparison with equivalent systems

| System | Type | 3D time-lapse | Centriole tracking | Open | Price |
|--------|------|:---:|:---:|:---:|--:|
| **LLSM (Betzig)** | Lattice light-sheet | ✅ | ✅ | ❌ | $500K-1M |
| **OpenSPIM** | Light-sheet | ✅ | ❌ | ✅ | $15-25K |
| **Nikon Ti2-E** | Confocal | ✅ | ❌ | ❌ | $80-200K |
| **IncuCyte S3** | Wide-field | ✅ | ❌ | ❌ | $50K |
| **ARGUS V0 (Alex)** | OpenFlexure | ❌ | ❌ | ✅ | **$930** |
| **ARGUS V6** | OpenFlexure | ❌ | ❌ | ✅ | **$3-4K** |
| **ARGUS V7** | OpenFlexure + WI | ✅ | ❌ | ✅ | **$15K** |
| **ARGUS V8** | **Light-sheet + AI** | ✅ | ✅ | ✅ | **$61K** |

> **ARGUS V8 — only open system with 3D time-lapse + centriole tracking. 9× cheaper than LLSM.**

---

## 5. Key References

| # | Reference | PMID |
|---|-----------|------|
| 1 | Sulston & Horvitz (1977) — lineage | 838129 |
| 2 | Kalbfuss & Gönczy (2023) — 88% eliminate | 37256957 |
| 3 | Gönczy & Balestra (2023) — stochastic | 36988082 |
| 4 | Anderson & Stearns (2009) — age | 19682908 |
| 5 | Magescas & Feldman (2025) — MTOC protects | preprint |
| 6 | Erpf & Mikeladze-Dvali (2020) — Dendra2 | — |
| 7 | Das (2021) — autophagy | — |
| 8 | Yamashita et al. (2007) | 17255513 |
| 9 | Januschke et al. (2011) | 21407209 |
| 10 | Wang et al. (2009) | 19829375 |

---

*C. elegans only. Pedigree = ∥/⟂. V8 light-sheet. $35K. 10 refs.*
