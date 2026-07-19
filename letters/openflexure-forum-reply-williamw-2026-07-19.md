Thanks William — that is exactly the kind of real-world data I was hoping for. Three things I'd love to follow up on:

**PET vs ASA.** Good to know PET held up for months. I was leaning ASA because of the O'Toole preprint, but if PET works and is easier to print that changes the calculation. What brand of PET did you use? Was it straight PET or PETG? I've had PETG warp on large flat parts but maybe the OpenFlexure geometry is different enough.

**Motor heat.** You mentioned the incubator couldn't keep temperature with motors on. We're planning TMC2209 drivers with CoolStep plus a MOSFET on Vmot switched by GPIO — kill power entirely between moves. With imaging every 10 minutes that should keep motors active maybe 20 seconds per cycle, so ~3% duty. Did you try cutting motor power between moves or did you solve it purely in firmware? What drivers were you running?

**The Quigly PLA story.** That's wild — deformed but focus still held for months at 20x. I'm aiming for 60x so probably can't get away with that, but it's reassuring that the platform is more forgiving than I assumed.

One more question if you have a moment — anyone tried water immersion in an incubator build? We need 60x/1.2 NA WI for centrosome resolution. I'm worried about the water evaporating over 48 hours. If it dries out mid-run the experiment is dead.

Thanks again — this is gold.

Jaba
https://github.com/Georgia-Longevity-Alliance/ARGUS-LP
