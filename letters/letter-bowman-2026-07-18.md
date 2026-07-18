To: contact@openflexure.org
From: jaba@longevity.ge
Subject: Fwd: for Richard Bowman — OpenFlexure inside a CO₂ incubator for 7-day live-cell fluorescence

Dear OpenFlexure team,

Could you please forward the message below to Dr. Richard Bowman? I tried reaching him at r.w.bowman@bath.ac.uk but the address bounced.

Thank you,
Jaba Tqemaladze

---

Dear Dr. Bowman,

I am building something with the OpenFlexure microscope that I have not seen documented anywhere: putting the whole thing inside a standard CO₂ incubator and running continuous fluorescence time-lapse for a week or more. Before I commit to the build, I would be grateful for a reality check from someone who knows the instrument far better than I do.

The project is called ARGUS-LP_OS. The idea is to track which daughter cell inherits the mature mother centrosome across multiple divisions in human RPE1-hTERT cells, using Centrin1-GFP and H2B-GFP. The microscope sits inside a Binder CB 60 at 37°C, 95% humidity, 5% CO₂. Electronics stay outside. Acquisition is adaptive — one frame every 10 minutes during interphase, every minute during mitosis — so the cells see about 4 minutes of cumulative 488 nm light per day.

What worries me:

1. **The plastic.** I am printing in PETG for the first prototype (Tg ~80°C), moving to ASA (Tg ~100°C) if PETG creeps. Has anyone in the community reported warping or dimensional drift after days at incubator temperature and humidity?

2. **Focus over days.** The Knapper 2022 autofocus holds <5 µm on blood smears at room temperature. I have no feel for what happens at 37°C over 72 hours. Does thermal expansion of the flexure stage become the limiting factor?

3. **Motors in a sauna.** NEMA-17 steppers at 37°C and 95% RH for weeks. I assume they are not rated for this. Do they corrode? Does the lubrication fail? Should I pot them in epoxy or just plan to replace them?

4. **Has anyone done this before?** I have searched the forum and the literature and found nothing — no published build report of an OpenFlexure running fluorescence time-lapse inside an incubator beyond a day or two. If there is a thread or a lab I have missed, a pointer would save me months.

Everything is open — GPLv3 for code, CC-BY-SA for hardware. If it works, the incubator adaptation, climate control code, and long-term stability data go straight back to the community.

I would be grateful for any advice, however brief.

Thank you for building OpenFlexure. It is exactly the kind of instrument that makes projects like this possible.

Jaba Tqemaladze
Georgia Longevity Alliance, Tbilisi
jaba@longevity.ge
