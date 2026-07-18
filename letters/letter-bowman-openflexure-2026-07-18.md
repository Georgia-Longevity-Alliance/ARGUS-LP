# Письмо Richard Bowman / OpenFlexure Community

> **Кому:** r.w.bowman@bath.ac.uk (наиболее вероятный), contact@openflexure.org (резервный)
> **От:** Jaba Tqemaladze, Georgia Longevity Alliance
> **Тема:** OpenFlexure inside CO₂ incubator — 72h+ live-cell lineage tracking
> **Статус:** Черновик — не отправлен
> **Дата:** 2026-07-18

---

Dear Dr. Bowman,

I am writing about an application of the OpenFlexure microscope that, as far as I can tell, has not been attempted before: continuous live-cell fluorescence imaging inside a standard CO₂ incubator for 7+ days, tracking organelle-level features (centrioles, ~200 nm) at 40×/0.95 NA.

**The project (ARGUS-LP_OS):** We are building an autonomous robotic microscope based on OpenFlexure v6.1.5 to track which daughter cell inherits the older mother centriole across multiple divisions in human neural progenitor cells. The goal is the first live-cell progenitor lineage map with centriole-identity annotation — entirely open source, entirely inside an incubator.

**What we are doing that is unusual:**
1. **Microscope INSIDE the incubator** (37°C, 95% RH, 5% CO₂) — OpenFlexure printed in ASA filament (Tg ~100°C), electronics outside
2. **Long-term fluorescence** — Centrin1-GFP + H2B-GFP, adaptive acquisition (10 min interphase / 1 min mitosis), ~4 min total light per day
3. **Centriole-level tracking** — TrackMate LoG detector for 176 nm structures at 40×/0.95 Dry

**What I would value your advice on:**

1. **Materials:** We plan ASA for V2+. For V1 prototype, PETG (Tg ~80°C). Has anyone in the OpenFlexure community tested PETG/ASA for weeks at incubator conditions? Any warping or creep?

2. **Focus stability:** We target <5 µm drift per 24h. The Knapper 2022 autofocus (J Microsc, PMID 34625963) gives <5 µm on blood smears at room temperature. Any data on drift at 37°C over multiple days?

3. **Motor reliability:** NEMA-17 steppers at 37°C/95% RH for weeks. Are there known failure modes — corrosion, lubrication loss?

4. **Community precedent:** Is anyone else using OpenFlexure for long-term live-cell fluorescence inside an incubator? If there is an LCI-OFM build report or a forum thread I've missed, I would be grateful for a pointer.

Our build is fully open (GPLv3/CC-BY-SA 4.0), and if we succeed, we will contribute the incubator adaptation back to the community with full documentation.

I would be grateful for any advice, even a brief reply.

With appreciation,
Jaba Tqemaladze, MD
President, Georgia Longevity Alliance
ORCID: 0000-0001-8651-7243
jaba@longevity.ge | +995 555 185161
Tbilisi, Georgia

ARGUS-LP_OS: https://github.com/Georgia-Longevity-Alliance/ARGUS-LP

---

**Примечания pi:**
- Наиболее вероятный email: **r.w.bowman@bath.ac.uk** (стандартный формат Bath)
- GitHub: **rwb27** — можно написать через GitHub Issues: https://github.com/rwb27/openflexure-microscope/issues
- OpenFlexure forum: https://openflexure.discourse.group/
- Общий контакт: **contact@openflexure.org**
- Письмо короткое, конкретное — 4 вопроса по делу
