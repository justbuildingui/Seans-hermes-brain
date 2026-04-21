---
aliases: ["hermes skill pruning", "minimal skill loading", "skills archive"]
tags: [hermes, agent-infra, operating-principle, gbrain]
---

# Only Load Skills Relevant to Active Work

> Sean's exact phrasing: "I'll never need the gaming, blood, promise, niche stuff" — and confirmed: keep things minimal and only load skills relevant to his work (Scholastic Capital wind-down, GBrain).

## Compiled Truth

Sean keeps his [Hermes](../concepts/gbrain.md) skill set minimal: only skills that serve active workstreams get loaded. Skills for domains he doesn't operate in (gaming, MLOps, red-teaming, niche/lifestyle verticals) waste tokens and add noise. He moved them to `_archive/` rather than deleting — preserving optionality without paying the token cost.

**Pruned to `_archive/` (2026-04-21):**
- `gaming/` — not a gaming operator
- `mlops/` — not running ML pipelines
- `red-teaming/` — not doing security work
- `heartmula/` — niche/lifestyle, not active
- `songsee/` — niche/lifestyle, not active

**Retained (active workstreams only):**
- Skills serving [Scholastic Capital](../programs/scholastic-capital.md) wind-down
- Skills serving [GBrain](../concepts/gbrain.md) operations

## Operating Principle

Token budget is a finite resource. Loading unused skills is a tax on every interaction. Archive, don't delete — the archived skills can come back if a workstream changes. But the default is: if it's not for current work, it doesn't load.

## See Also
- [always-want-the-simple](always-want-the-simple.md)
- [concepts/gbrain](../concepts/gbrain.md)
- [programs/scholastic-capital](../programs/scholastic-capital.md)

---
<!-- timeline — append-only, reverse chronological -->

## 2026-04-21 — Sean (direct statement, signal-detector)
Sean confirmed: "I'll never need the gaming, blood, promise, niche stuff." Context: Hermes skills pruning session. Moved `gaming/`, `mlops/`, `red-teaming/`, `heartmula/`, `songsee/` from `~/.hermes/skills/` to `~/.hermes/skills/_archive/`. Explicit decision: keep skills minimal, only load what's relevant to active work (Scholastic Capital wind-down + GBrain). *self-described: Sean's direct statement.*
