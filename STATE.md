# STATE — ARGUS-OS1

**Date:** 2026-07-21
**Status:** ✅ v100 — Centriole pedigree. 2 маркера. Узел = генная сеть. OS1→OS2→OS3.

## Current Design

| Parameter | Value |
|-----------|-------|
| **Platform** | OpenFlexure v6.1.5, 60×/1.2 NA WI, 24/7 AI tracking |
| **Markers** | Centrin1-GFP + SiR-Tubulin |
| **Primary variable** | Centriole pedigree — последовательность ориентаций веретена |
| **Age** | Время от создания центриоли (часы) — контрольная переменная |
| **Fate** | Делится/нет. Узел = изменение активности генных сетей (OS3) |
| **N** | 600 пар |
| **Budget** | ~$40,000 |

## OS1 → OS2 → OS3

- **OS1:** запись centriole pedigrees + судьба
- **OS2:** проверка 2 предсказаний (конвергенция + возраст-независимость)
- **OS3:** прогениторные карты = граф с генными сетями
