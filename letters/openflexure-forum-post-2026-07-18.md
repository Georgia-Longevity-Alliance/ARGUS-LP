# OpenFlexure inside a CO₂ incubator for week-long live-cell fluorescence — build report and questions

**Category:** Build Reports / Live-Cell Imaging
**Contact:** jaba@longevity.ge
**Tags:** incubator, live-cell, fluorescence, long-term, centriole, PETG, ASA

---

I am building an OpenFlexure v6.1.5 that lives inside a standard CO₂ incubator and runs fluorescence time-lapse for a week at a time. The goal is to track which daughter cell inherits the older mother centriole across multiple divisions (human neural progenitors, Centrin1-GFP + H2B-GFP).

**The setup:**
- OpenFlexure v6.1.5, 40×/0.95 dry objective
- Printed in PETG (V1) / ASA (V2+)
- Binder CB 60 incubator: 37°C, 95% RH, 5% CO₂
- RasPi 5 + electronics outside. Only motors, camera, and LED inside.
- Adaptive acquisition: 10 min interphase, 1 min during mitosis → ~4 min of 488 nm light per day
- Hammock suspension for vibration isolation

**What I have figured out:**
- ASA filament (Tg ~100°C) over PLA+ (deforms) over PETG (Tg ~80°C, borderline)
- Dry objective — no water, no immersion oil, no heater
- N₂ purge through auxiliary port for 5% O₂ (physiological normoxia for neural progenitors)

**What I would love help with:**

1. Has anyone run an OpenFlexure continuously at 37°C and high humidity for more than 72 hours? If PETG warped or ASA held up, I would like to know before I start the print.

2. The Knapper 2022 autofocus holds <5 µm at room temperature. Any experience with thermal drift over days? Does the flexure stage expand enough to matter?

3. NEMA-17 steppers at 37°C / 95% RH for weeks. Anyone had one fail? Should I pot them or just keep spares?

4. I need a test slide with fluorescent beads or fixed GFP cells to benchmark autofocus drift over 72h in the incubator. If someone has a recipe that works, I am all ears.

**What I will contribute back:**
- Full incubator adaptation documentation
- Climate control code (O₂, humidity, temperature logging)
- 72h stability data (autofocus drift, stage drift, frame quality)
- STL files for ASA-optimized parts if any modifications are needed

If anyone else is attempting long-term live-cell fluorescence with an OpenFlexure, I would love to compare notes. Even if you tried and it did not work — that is just as valuable.

Project repo: https://github.com/Georgia-Longevity-Alliance/ARGUS-LP

---

*Jaba Tqemaladze, Georgia Longevity Alliance*
