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
| Light-sheet module (cyl. lens + optics + frame) | 1,000 |
| Microfluidic chip + system | 2,000 |
| OpenFlexure base (ASA) | 800 |
| Jetson Orin NX + RasPi 5 | 1,500 |
| C. elegans + reagents | 1,000 |
| Data analysis | 3,000 |
| Contingency (20%) | 5,700 |
| **Total** | **~35,000** |

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
| **ARGUS V8** | **Light-sheet** | ✅ | ✅ | ✅ | **$35K** |

> **ARGUS V8 — only open system with 3D time-lapse + centriole tracking. 14× cheaper than LLSM.**

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
