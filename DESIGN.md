# DESIGN — ARGUS-OS1

## Architecture

ARGUS-OS1 is built on OpenFlexure v6.1.5 with local AI compute.

| Stage | Hardware | Software |
|:---:|------|------|
| OS1 (V6) | OpenFlexure + Jetson Orin NX + Dry 40× | CellPose + tracking + lineage |
| OS2 (V7) | 60×/1.2 WI + sCMOS + microfluidic | Jetson AGX |
| OS3 (V8) | Light-sheet + fs-laser + tweezers | Full platform |

## Key Design Decisions

- Upright geometry for water immersion
- Local edge-AI (no cloud dependency)
- Motor release via Sangaboard API (WilliamW, 2026)
- C. elegans model organism

See README.md for version details.
