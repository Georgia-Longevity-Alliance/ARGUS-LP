# STATE — ARGUS-OS1

**Date:** 2026-07-23
**Status:** ✅ v156 — Final. N=100. E-lineage included. SAS-1 latency. Mother/daughter. 3-category fate. V8 mandatory. $140K.

## 23 июл: Motor release — прорыв от WilliamW
- Sangaboard firmware **уже содержит** motor release command
- Не нужен TMC2209 + MOSFET — просто добавить вызов в REST API
- Следствие: нагрев в CO₂-инкубаторе решён на уровне софта
- Задача: expose motor_release() в API → PR в OpenFlexure
