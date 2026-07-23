# STATE — ARGUS-OS1

**Date:** 2026-07-23
**Status:** 🔵 OS1 — OpenFlexure + Jetson Orin NX (локальный AI). Алекс собирает.

## OS Stages
- **OS1:** ~$3-5K — OpenFlexure + Camera HQ + Jetson Orin NX — локальная AI-платформа. Не V0 (без мозгов), а полноценный edge-AI сервис.
- **OS2:** ~$126K — V7 = OS1 + 60×/1.2 WI + sCMOS + microfluidic
- **OS3:** +$141K — V8 = OS2 + light-sheet + fs-laser + tweezers

## 23 июл: Motor release — прорыв от WilliamW
- Sangaboard firmware **уже содержит** motor release command
- Не нужен TMC2209 + MOSFET — просто добавить вызов в REST API
- Следствие: нагрев в CO₂-инкубаторе решён на уровне софта
- Задача: expose motor_release() в API → PR в OpenFlexure
