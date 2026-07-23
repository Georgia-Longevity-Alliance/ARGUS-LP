# STATE — ARGUS-OS1

**Date:** 2026-07-23
**Status:** 🔵 OS1 = V6 — OpenFlexure + Jetson Orin NX + Dry 40×/0.75 (~$3-5K). Локальный edge-AI. Алекс собирает.

## OS Stages
- **V0:** ~$930 — голая механика OpenFlexure, без AI
- **OS1 = V6:** ~$3-5K — локальный AI (Jetson Orin NX, CellPose + трекинг + lineage)
- **OS2 = V7:** ~$126K — 60×/1.2 WI + sCMOS + microfluidic
- **OS3 = V8:** +$141K — light-sheet + fs-laser + tweezers

## 23 июл: Motor release — прорыв от WilliamW
- Sangaboard firmware **уже содержит** motor release command
- Не нужен TMC2209 + MOSFET — просто добавить вызов в REST API
- Следствие: нагрев в CO₂-инкубаторе решён на уровне софта
- Задача: expose motor_release() в API → PR в OpenFlexure
