# V2.0 — CAUSALITY (поиск причин)

**Date:** 2026-07-20 (revised — deep audit)
**Hardware:** V7 (водная иммерсия 60×/1.2 NA, локальный AI, ночное видение, HEPA H13)
**Budget:** ~$31K
**Status:** Концепт. Не для грантов — для внутреннего планирования.

---

## 1. Задача

v1.0 показал корреляцию: зрелая материнская центриоль (высокий Cenexin/Ninein сигнал) → более быстрый цилиогенез (RPE1) / сохранение прогениторности (NPC).

**v2.0 отвечает на вопрос: центросомный возраст — ПРИЧИНА или просто коррелят?**

### 1.1. Важное различие

| Что тестируем | Метод | Доказывает |
|---------------|------|------------|
| **Структурная необходимость** | Ninein KD, Odf2 Δ4/5 | Нужны ли appendages для асимметрии? |
| **Возрастная причинность** | Dendra2-Centrin photoconversion + cell cycle arrest | Возраст сам по себе причинен? |

> **⚠️ Ninein KD и Odf2 domain deletions тестируют СТРУКТУРНУЮ необходимость, а не возрастную причинность.** Возраст ≠ структура. Клетка с заблокированным делением имеет «старую» центриоль с нормальной структурой. Odf2 KO — центриоль без структуры, но возраст не меняется. Это разные вопросы. v2.0 отвечает на оба, но признаёт различие открыто.

---

## 2. Эксперименты

### Эксперимент 1: Ninein KD — рандомизация наследования

| Параметр | Значение |
|----------|----------|
| **Метод** | shNinein лентивирус (коммерчески доступен, Dharmacon/Sigma) — валидирован в человеческих NPCs (Royall 2023, PMID 37882444) |
| **Логика** | Ninein — белок subdistal appendages. KD → частичная потеря appendage функции → нарушение асимметричного наследования |
| **⚠️ Важно** | Ninein KD снижает но НЕ обнуляет асимметрию. Royall 2023: значительное снижение, но не до 50%. Ожидаемый эффект: 94% → 65-75% (не 50%). |
| **Контроль 1** | Scramble shRNA — негативный контроль трансдукции |
| **Контроль 2** | Ninein rescue — ре-экспрессия shRNA-резистентного Ninein. Если асимметрия восстанавливается → эффект специфичен |
| **Контроль 3** | Centrin1-Dendra2 photoconversion (405 nm LED) — НЕЗАВИСИМЫЙ метод определения возраста центриоли. Не зависит от структуры appendages |
| **Confounding** | Ninein anchoring MTs → KD нарушает positioning ядра, миграцию, митоз. Нужно измерять: (a) митотический индекс, (b) расстояние ядро-центросома, (c) форма ядра |

**Предсказания:**

| Наблюдение | Интерпретация |
|------------|---------------|
| Asymmetry снижается до ~65-75% | Структура (Ninein) частично необходима для асимметрии |
| Asymmetry остаётся 94% | Структура не нужна → асимметрия через microtubule pulling forces или cell shape |
| Asymmetry падает до ~50% | Ninein = единственный механизм (маловероятно) |
| Dendra2 показывает асимметрию при Ninein KD | Возраст ≠ Ninein-зависимая структура |

### Эксперимент 2: Odf2 domain deletions — диссекция appendages

| Группа | Конструкт | Фенотип (Tateishi 2013, PMID 24189274) | Предсказание |
|--------|-----------|----------------------------------------|--------------|
| **WT** | — | DA+SA+, нормальный цилиогенез | ~94% асимметрия (репликация Anderson 2009) |
| **Odf2⁻/⁻ + FL** | Full-length | **Positive control** — полный rescue | Асимметрия восстановлена |
| **Odf2⁻/⁻ + Δ4/5** | Central deletion | **DA+SA−** — distal есть, subdistal нет. Цилия образуется но аномальная | Тест: достаточно ли distal appendages? |
| **Odf2⁻/⁻ + Δ6/7** | C-terminal deletion | **DA+SA+** — оба типа есть, цилия нормальная | Второй positive control |
| **Odf2⁻/⁻ + mock** | Пустой вектор | DA−SA−, цилии нет (Ishikawa 2005, PMID 15852003) | Negative control |

> **⚠️ КРИТИЧЕСКИЙ РИСК:** Tateishi 2013 — мышиные F9 клетки (эмбриональная карцинома). Перенос на человеческие RPE1 НЕ гарантирован. Odf2 constructs для human клеток требуют de novo дизайна и валидации.
>
> **План风险管理:**
> - **Этап 2a (4-6 недель):** Ninein KD — быстро, низкий риск. Ответ на вопрос о структурной необходимости.
> - **Этап 2b (20-24 недели, только если 2a положительный):** Odf2 domain deletions — медленно, высокий риск. Ответ на вопрос о том какие appendages достаточны.
> - **Fallback если Odf2 constructs fail:** (a) CRISPRi partial knockdown вместо KO, (b) Centriolin KD (Thomas & Meraldi 2024 показали что centriolin⁻/⁻ убирает spindle asymmetry), (c) Опубликовать negative result: «Odf2 domain deletions from mouse F9 do not transfer to human RPE1».

---

## 3. Механистические контроли

| Контроль | Что | Зачем |
|----------|-----|-------|
| **Cyclopamine** (5 µM, 24h) | Shh pathway inhibitor (Corbit 2005, PMID 16054098) | Если цилиогенез в RPE1 Shh-зависим → это confounding. Нужно измерить baseline Shh-dependence. |
| **DAPT** (10 µM, 24h) | Notch inhibitor (γ-secretase) | Для NPCs: контроль Notch-зависимой дифференцировки. |
| **Ki67/EdU** | Пролиферация | Исключить что KD/трансфекция меняет cell cycle. |
| **Centrin1-Dendra2** | Photoconversion 405 nm | Ортогональный метод определения возраста центриоли (не зависит от appendages). |
| **CellROX + caspase-3/7** | ROS + apoptosis | Исключить что shNinein токсичен. |
| **Pericentrin/γ-tubulin IF** | PCM integrity | Исключить что Ninein KD разрушает PCM (а не только appendages). |

---

## 4. Альтернативные механизмы (не тестируются в v2.0, но должны быть учтены)

| Механизм | Ссылка | Что показано | Почему важен |
|----------|--------|-------------|--------------|
| **CIN (chromosome mis-segregation)** | Gasic 2015, PMID 26287477 | 85% lagging chromosomes → daughter with old centrosome | **Эффект количественно больше чем spindle asymmetry (85% vs 3.1%)** |
| **Cilium membrane inheritance** | Paridaen 2013, PMID 24120134 | Asymmetric inheritance of ciliary membrane → faster ciliogenesis | Может объяснять асимметрию НЕЗАВИСИМО от appendages |
| **Spindle asymmetry** | Thomas & Meraldi 2024, PMID 39012627 | SAI = 3.1% в RPE1. Centriolin⁻/⁻ → SAI = 0.4% | Механизм размера дочерних клеток |
| **β-catenin/Wnt degradation** | Fuentealba 2008, PMID 18511557 | Asymmetric segregation of p-β-catenin at centrosomes | Возможный сигнальный механизм |

> **CIN pathway может быть основным драйвером асимметрии судьбы**, а не spindle size. v2.0 должен измерять micronucleus count как secondary endpoint.

---

## 5. Статистический дизайн

### 5.1. Мощность для Ninein KD

**Модель:** Conditional logistic regression (paired, stratified by mother cell).

```
clogit(asymmetry ~ group + cell_area + cell_cycle + strata(mother_id))
```

| Сценарий | WT асимметрия | KD асимметрия | N (пары) | Power |
|----------|:------------:|:------------:|:--------:|:-----:|
| Сильный эффект | 94% | 65% | 200 | 92% |
| Умеренный | 94% | 75% | 200 | 78% |
| Слабый | 94% | 80% | 400 | 80% |
| Null | 94% | 90% | 800 | 45% (futility) |

> **N=200 пар — компромисс.** Power ≥80% для умеренного эффекта если реальная разница ≥19 п.п. При слабом эффекте → adaptive increase до N=400 (Cui-Hung-Wang).

### 5.2. Odf2 (exploratory)

| Групп | N на группу | Test | Power |
|:----:|:----------:|------|:-----:|
| 5 | 50 пар | McNemar с Bonferroni (α=0.01) | ~60% при 94%→75% |

> **Odf2 ≡ exploratory.** Для confirmatory нужно N=100/группу (total 500 пар). Не влезает в бюджет v2.0.

### 5.3. Interim analysis

- **N=100:** O'Brien-Fleming α=0.005. Stop for futility если conditional power <20%.
- **N=200:** Final analysis α=0.048.

---

## 6. Железо (V7)

| Узел | Спецификация | Цена |
|------|-------------|:---:|
| Механика | OpenFlexure v6.1.5, ASA (Tg 95-105°C, O'Toole-validated: Malcolm 2026, bioRxiv) | $600 |
| Объектив | **60×/1.2 NA WI** (Olympus/Nikon, tested used) | $3,000 |
| Камера | ZWO ASI183MM Pro (охлаждаемая, SNR ≥5 при ≤200ms) | $1,000 |
| RasPi 5 (8GB) + 1TB NVMe | Управление моторами + камерой | $250 |
| Jetson Orin NX 16GB + Hailo-8L | Локальный AI: CellPose 2.0 (Stringer 2021, PMID 33318659) + Bayesian tracker + lineage reconstruction | $700 |
| TMC2209 + GPIO MOSFET | Motor thermal management (3% duty → 0.6W avg, WilliamW OpenFlexure Forum 2026) | $80 |
| LED 488 nm + фильтры (Thorlabs) | Centrin1-GFP возбуждение | $450 |
| 405 nm LED (Thorlabs DJ405-10) | Dendra2 photoconversion | $500 |
| IR 850 nm + Camera NoIR | Ночное видение (Kiepas 2020, PMID 31988150 — phototoxicity methodology) | $50 |
| Инкубатор CO₂ | Binder CB 60 / Benchmark MyTemp, 37°C, 5% CO₂, HEPA H13 | $6,000 |
| Glove-box | Акрил 50×50×60 см + HEPA H13 (вход/выход) + неопреновые рукавицы + UV-C sterilisation | $5,000 |
| SprintIR-6S + LuminOx | CO₂/O₂ мониторинг | $300 |
| DS18B20 ×4 + BME280 | Temperature monitoring (motor housings + chamber) | $30 |
| **Итого железо** | | **~$17,960** |

### 6.1. Автофокус

**Метод:** Knapper 2022 (PMID 34625963) — contrast-based autofocus на brightfield, <5 µm precision. Имплементирован в OpenFlexure Connect.
**Валидация:** Pilot 0: 7 дней, GFP beads, drift <10 µm/24h с водной иммерсией + medium.

---

## 7. Биология

| Позиция | Цена | Примечание |
|----------|:---:|------------|
| RPE1-hTERT Centrin1-GFP (CRISPR-KI preferred, lentivirus fallback) | $1,500 | ATCC CRL-4000. Контроль overexpression: Loncarek 2008 (PMID 18297061) — Western blot ≤2× endogenous |
| RPE1-hTERT Centrin1-Dendra2 (lentivirus) | $1,500 | Для photoconversion calibration |
| Ninein shRNA (коммерческая) + scramble | $500 | Dharmacon GIPZ lentiviral |
| Ninein-GFP rescue construct | $800 | shRNA-resistant, синтез |
| Odf2 constructs ×4 (синтез + CRISPR-KI) | $8,000-10,000 | Только если Ninein KD positive. Синтез + клонирование + selection |
| Cenexin antibody (100 µg) + вторичные | $500 | Endpoint classification |
| IF antibodies (acetyl-tubulin, pericentrin, γ-tubulin, Ninein, Cep164, Ki67, centrin-2, DAPI) | $700 | Контроли PCM/appendage integrity |
| CYTOO 2-cell coverslips ×20 | $1,500 | Primary sister isolation |
| Tetraspeck beads (FITC calibration) | $200 | Cross-experiment Cenexin normalisation |
| Среды, FBS, антибиотики, реагенты (Cyclopamine, DAPT, Polybrene, puromycin) | $800 | |
| Трансфекция (Lipofectamine 3000) + selection | $300 | |
| **Итого биология** | | **~$16,300** |
| **Ninein-only (без Odf2)** | | **~$7,500** |

---

## 8. Хронология (fast track — Ninein KD)

| Этап | Недель | Что |
|:-----|:---:|------|
| V7 сборка + калибровка | 4 | Печать ASA, сборка, юстировка 60×/1.2 WI |
| Pilot 0 — стабильность | 1 | GFP beads, 7 дней, drift <10 µm/24h |
| Pilot 0.5 — IR + WI | 1 | Water immersion + medium + IR, 72h. ΔT_medium <1°C |
| Pilot 1 — Centrin-Cenexin | 2 | RPE1, 30 пар, concordance ≥90% |
| Pilot 2 — Ninein KD validation | 2 | Western blot (KD efficiency ≥70%), toxicity (viability ≥90%), Dendra2 calibration |
| Main Ninein KD | 4 | N=200 пар, scramble control, 48h imaging |
| Ninein rescue | 2 | N=50 пар, shRNA-resistant Ninein-GFP |
| Анализ + публикация | 4 | |
| **Всего (без Odf2)** | **~20 недель** | |

**Odf2 domain deletions — параллельный трек (если Ninein KD positive):**

| Этап | Недель |
|:-----|:---:|
| Синтез конструктов | 4 |
| CRISPR-KI + clone selection | 8-12 |
| Validation (IF + EM) | 4-6 |
| Experiment (N=50/группу ×5 групп) | 6 |
| **Всего Odf2** | **22-28 недель** |

---

## 9. Go/No-Go критерии

| Gate | Критерий | Действие при провале |
|------|----------|---------------------|
| Pilot 1 | Centrin-Cenexin ≥90% (30 пар) | Проверить Centrin1-GFP overexpression (Loncarek 2008). Если >2× endogenous → CRISPR-KI. |
| Pilot 2 | Ninein KD efficiency ≥70% (WB), viability ≥90% | Другой клон shRNA. Если 3 клона fail → CRISPRi. |
| Main | Asymmetry drop ≥15 п.п. (94%→≤79%) при N=200 | Public: структурная необходимость. Если нет → публиковать null (структура ≠ причина). |
| Odf2 Go | Ninein KD positive + Odf2 construct validation в RPE1 | Без Ninein KD positive → Odf2 не имеет смысла. |

---

## 10. Публикация

| Результат | Действие |
|-----------|----------|
| Ninein KD ↓ asymmetry ≥19 п.п. | **Публикация:** subdistal appendages structurally necessary for centrosome-age-dependent cilium asymmetry |
| Ninein KD no effect + Dendra2 показывает асимметрию | **Публикация:** centrosome age ≠ Ninein-dependent. Механизм через microtubule pulling / cell shape |
| Odf2 Δ4/5 сохраняет асимметрию | **Публикация:** distal appendages ALONE sufficient |
| Odf2 Δ4/5 теряет асимметрию | Нужны оба типа appendages |
| Всё отрицательно | **Публикация:** centrosome age asymmetry in RPE1 is NOT mediated by appendage structure → CIN (Gasic) или cilium membrane (Paridaen) механизмы |

**Публикуем независимо от исхода.**

---

## 11. Ключевые источники

| # | Ссылка | PMID | Что использовано |
|---|--------|------|------------------|
| 1 | Royall LN et al. *eLife* 12:e83157 (2023) | 37882444 | Ninein KD в человеческих NPCs — основной метод v2.0 |
| 2 | Anderson CT, Stearns T. *Curr Biol* 19:1498-1502 (2009) | 19682908 | 94% cilium asymmetry — baseline для power calculation |
| 3 | Tateishi K et al. *J Cell Biol* 201(3):417-425 (2013) | 24189274 | Odf2 domain deletions: Δ4/5 (DA+SA−), Δ6/7 (DA+SA+) |
| 4 | Ishikawa H et al. *Nat Cell Biol* 7:517-524 (2005) | 15852003 | Odf2 KO → no appendages, no cilia. Original Odf2 paper |
| 5 | Thomas A, Meraldi P. *J Cell Biol* 223(8) (2024) | 39012627 | Spindle asymmetry SAI=3.1%. Centriolin⁻/⁻ → SAI=0.4% |
| 6 | Gasic I et al. *eLife* 4:e07909 (2015) | 26287477 | 85% lagging chromosomes → old centrosome side. CIN mechanism |
| 7 | Paridaen JT et al. *Cell* 155:333-344 (2013) | 24120134 | Asymmetric cilium membrane inheritance |
| 8 | Barandun N et al. *Cell Rep* 44:115127 (2025) | 39764850 | Mother centrosome → memory in CD8+ T cells. Ninein keyword |
| 9 | Wang X et al. *Nature* 461:947-955 (2009) | 19829375 | Asymmetric centrosome inheritance → progenitor maintenance, mouse neocortex |
| 10 | Conduit PT, Raff JW. *Curr Biol* 20:2187-2192 (2010) | 21145745 | Cnn dynamics → centrosome size asymmetry, Drosophila NB |
| 11 | Chatterjee A et al. *Cerebellum* 17:685-691 (2018) | 29663194 | **NULL:** centrosome inheritance does NOT regulate fate in cerebellar GNPs |
| 12 | Fuentealba LC et al. *PNAS* 105(22):7732-7737 (2008) | 18511557 | Asymmetric segregation of p-β-catenin/pSmad1 at centrosomes |
| 13 | Loncarek J et al. *Nat Cell Biol* 10:322-328 (2008) | 18297061 | Centrin1-GFP overexpression control (≤2× endogenous) |
| 14 | Corbit KC et al. *Nature* 437:1018-1021 (2005) | 16054098 | Cyclopamine — Shh pathway inhibitor |
| 15 | Januschke J et al. *Nat Commun* 2:243 (2011) | 21407209 | Drosophila NB: daughter→stem (tissue polarity reversal) |
| 16 | Kiepas A et al. *J Cell Sci* 133(4):jcs242834 (2020) | 31988150 | Phototoxicity methodology |
| 17 | Stringer C et al. *Nat Methods* 18:100-106 (2021) | 33318659 | CellPose 2.0 |
| 18 | Knapper J et al. *J Microsc* 285:40-51 (2022) | 34625963 | Autofocus for OpenFlexure |
| 19 | Malcolm JR et al. *bioRxiv* 2026.02.02.703252v2 (2026) | 10.64898 | ASA OpenFlexure в CO₂ инкубаторе |
| 20 | Valdes Michel MF, Phillips BT. *Mol Biol Cell* 36(3):ar25 (2025) | 39813084 | C. elegans Wnt/β-catenin (эволюционный контекст) |

---

## 12. Слабые места и их решение

| # | Слабое место | Решение |
|---|-------------|---------|
| 1 | Ninein KD ≠ возрастная причинность. Это структурная необходимость. | Добавлен Dendra2 photoconversion как ортогональный метод. Честное различие в §1.1. |
| 2 | Ninein KD confounding (MT anchoring) | Измерять positioning ядра, митоз, форму. Контроли PCM integrity. |
| 3 | Odf2 mouse→human gap | Двухэтапный план: Ninein KD first, Odf2 only if positive. Fallback: publish negative transfer result. |
| 4 | Нет rescue для Ninein KD | Добавлен Ninein-GFP rescue. |
| 5 | N=200 может быть мало для слабого эффекта | Adaptive increase до N=400 (Cui-Hung-Wang). Interim analysis. |
| 6 | Нет mechanistic controls | Cyclopamine (Shh), DAPT (Notch), Ki67, CellROX. |
| 7 | Не учтён CIN pathway | Gasic 2015 добавлен. Micronucleus count как secondary endpoint. |
| 8 | Не учтена cilium membrane inheritance | Paridaen 2013 добавлен в альтернативные механизмы. |
| 9 | Centrin1-GFP overexpression может влиять на centriole biology | Loncarek 2008: Western blot ≤2× endogenous = GO. CRISPR-KI preferred. |
| 10 | 94% asymmetric cilium — только в NIH/3T3 (Anderson 2009). В RPE1 не валидировано. | Pilot 1 реплицирует Anderson 2009 в RPE1. Baseline может отличаться. |

---

*v2.0 — поиск структурной необходимости. v3.0 — технология создания прогениторных карт (лазер + манипуляторы + пинцеты) + прямая возрастная причинность через Dendra2 photoconversion + cell cycle manipulation.*
