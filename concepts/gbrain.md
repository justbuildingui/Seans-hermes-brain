---
aliases: ["GBrain", "G Brain", "G-Brain", "gbrain"]
tags: [tool, knowledge-base, agent-infra, sean-mission-2]
---

# GBrain

> LLM-maintained personal knowledge base created by [Garry Tan](../people/garry-tan.md). Sean runs it as the substrate for mission #2 — "build a deep, queryable brain so I can constantly learn." Installed 2026-04-20.

## State
- **What it is:** Pluggable-engine knowledge brain (PGLite default, Supabase optional). CLI + MCP server generated from a single contract (`src/core/operations.ts`). Skills are fat markdown files that work across CLI and agent plugin contexts.
- **Author:** [Garry Tan](../people/garry-tan.md) — Sean treats his upstream rules as binding (see [hold-the-line-on-upstream-rules](../originals/hold-the-line-on-upstream-rules.md)).
- **How Sean runs it:**
  - Tool repo: `~/gbrain` (do not edit)
  - Brain repo: `~/brain` (Sean's markdown data, pushed to `github.com/justbuildingui/Seans-hermes-brain`)
  - Engine: PGLite at `~/.gbrain/brain.pglite`
- **Governing files:** [AGENTS.md](../AGENTS.md), [SOUL.md](../SOUL.md), [RESOLVER.md](../RESOLVER.md), [schema.md](../schema.md), `~/gbrain/skills/`

## Why it matters to Sean
- **Mission #2 of 2:** Sean's exact phrasing — "I want to build a deep, queryable brain so I can constantly learn." Every signal (tweet, meeting, reading, conversation) gets captured, enriched, and made searchable.
- Pairs with mission #1 (wind down [Scholastic Capital](../programs/scholastic-capital.md)) — the brain holds the real-estate portfolio state, buyer pipeline, and deal history as the wind-down proceeds.

## Operating Conventions Sean Has Adopted
- Never auto-install updates (Garry's rule, enforced by the `gbrain-auto-update` cron which is notify-only).
- Brain-first lookup before any factual answer (AGENTS.md Iron Law #1).
- Simple option first, complex/paid later (see [always-want-the-simple](../originals/always-want-the-simple.md)) — e.g. xurl over x-to-brain for tweet ingestion.
- "Complete" means pushed to GitHub, not just saved locally (see [complete-means-pushed-to-github](../originals/complete-means-pushed-to-github.md)).
- Brain repo owns identity — SOUL.md and AGENTS.md live in `~/brain` and everywhere else symlinks back (see [brain-repo-owns-identity](../originals/brain-repo-owns-identity.md)).
- Verify agent recommendations against the GBrain docs before agreeing (see [check-against-upstream-docs-before-agreeing](../originals/check-against-upstream-docs-before-agreeing.md)).
- Audit whether ambient GBrain plumbing (cron jobs, signal-detector subagent, hooks) is actually firing, not just configured (see [audit-whether-the-plumbing-actually-fires](../originals/audit-whether-the-plumbing-actually-fires.md)).
- Surface canonical component names (`signal-detector`, `gbrain-live-sync`, etc.) wherever Sean works, so he never has to describe his own infra (see [if-sean-has-to-ask-the-name-surface-it-louder](../originals/if-sean-has-to-ask-the-name-surface-it-louder.md)).
- Keep Hermes skills minimal — only load what's relevant to active work (Scholastic Capital wind-down + GBrain). Non-active skills archived, not deleted (see [only-load-skills-relevant-to-active-work](../originals/only-load-skills-relevant-to-active-work.md)).

## Open Threads
- Tweet ingestion via xurl (paused cron; resume when authenticated)
- Fill out the portfolio / deals / meetings layers as Scholastic wind-down progresses
- Version-check discipline — auto-update cron surfaces new releases every 4h; Sean decides when to pull

## See Also
- [Garry Tan](../people/garry-tan.md)
- [programs/scholastic-capital.md](../programs/scholastic-capital.md)
- [programs/ironman-training.md](../programs/ironman-training.md)
- [AGENTS.md](../AGENTS.md)
- [SOUL.md](../SOUL.md)
- [concepts/obsidian.md](obsidian.md) — explored as potential storage hub alternative to GitHub
- [originals/obsidian-as-storage-hub-for-gbrain.md](../originals/obsidian-as-storage-hub-for-gbrain.md)

---
<!-- timeline — append-only, reverse chronological -->

## 2026-04-21 — Obsidian-as-storage-hub explored; openhue archived
Sean asked whether Obsidian could replace GitHub as the sync layer for `~/brain/`. Key findings: `~/brain/` is already a valid Obsidian vault (all markdown); GBrain engine is filesystem-agnostic; git provides audit trail for agent writes that Obsidian Sync would lose; both can run simultaneously. Also: Sean archived `openhue` (smart-home skill) to save tokens. See [originals/obsidian-as-storage-hub-for-gbrain.md](../originals/obsidian-as-storage-hub-for-gbrain.md). *self-described: Sean's direct question and reasoning, 2026-04-21.*

## 2026-04-21 — Hermes skills pruned; minimal-load principle adopted
Sean archived `gaming/`, `mlops/`, `red-teaming/`, `heartmula/`, `songsee/` to `~/.hermes/skills/_archive/`. Explicit preference: only load skills relevant to active work (Scholastic Capital wind-down + GBrain). Captured in [only-load-skills-relevant-to-active-work](../originals/only-load-skills-relevant-to-active-work.md). *self-described: Sean's direct statement, 2026-04-21.*

## 2026-04-20 — Referenced in new originals
GBrain cited as the upstream authority in [check-against-upstream-docs-before-agreeing](../originals/check-against-upstream-docs-before-agreeing.md) and the canonical home for identity files in [brain-repo-owns-identity](../originals/brain-repo-owns-identity.md). Also referenced as the substrate whose ambient wiring is under audit in [audit-whether-the-plumbing-actually-fires](../originals/audit-whether-the-plumbing-actually-fires.md) and whose components need surfaced names in [if-sean-has-to-ask-the-name-surface-it-louder](../originals/if-sean-has-to-ask-the-name-surface-it-louder.md). observed: signal-detector capture, 2026-04-20.

## 2026-04-20 — GBrain installed
Sean and Ollie installed GBrain on Sean's Hermes deployment. Brain repo initialized at `~/brain`, pushed to `github.com/justbuildingui/Seans-hermes-brain`. Engine: PGLite. Cron jobs configured: live-sync (15m), tweet-ingest (paused), dream-cycle (2am CT), weekly-doctor (Sun 7am CT), auto-update (notify-only, every 4h). Sean designated it mission #2. observed: GBrain install conversation with Ollie.
