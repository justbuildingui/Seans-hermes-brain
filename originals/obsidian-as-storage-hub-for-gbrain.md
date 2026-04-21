---
aliases: ["obsidian-gbrain-storage", "obsidian as gbrain hub"]
tags: [gbrain, obsidian, storage, tooling, architecture]
---

# Obsidian as Storage Hub for GBrain Files

> Sean's question and exploration: "What would happen if we use obsidian as our storage hub for g brain files instead of GitHub?" — exploring whether Obsidian could replace GitHub as the sync/storage layer for `~/brain/`.

## Key Insight

Sean surfaced that `~/brain/` is **already a valid Obsidian vault** — it's all markdown. The [GBrain](../concepts/gbrain.md) engine (PGLite, gbrain CLI) is filesystem-agnostic; it reads from the local directory regardless of how that directory is synced. The question is about the *sync and audit layer*, not the engine.

## The Trade-off

| Layer | GitHub (current) | Obsidian Sync |
|---|---|---|
| Format | Markdown ✓ | Markdown ✓ |
| Agent-write audit trail | Full git log ✓ | ✗ (no versioning) |
| Filesystem-agnostic | Yes | Yes |
| Human UI | GitHub web | Obsidian app |
| Works simultaneously | — | Yes — can run both |

## Sean's Exact Phrasing

> "What would happen if we use obsidian as our storage hub for g brain files instead of GitHub?"

The key distinction he landed on: Git provides the **audit trail for agent writes** — Obsidian Sync would lose that. Both can coexist: `~/brain/` as an Obsidian vault (for visual browsing and mobile access) while git remains the authoritative sync and version layer. Not either/or.

## See Also

- [concepts/gbrain.md](../concepts/gbrain.md)
- [brain-repo-owns-identity](./brain-repo-owns-identity.md)
- [complete-means-pushed-to-github](./complete-means-pushed-to-github.md)

---
<!-- timeline — append-only, reverse chronological -->

## 2026-04-21 — signal-detector capture
Sean asked whether Obsidian could replace GitHub as the sync/storage layer for `~/brain/`. Key insight surfaced: `~/brain/` is already a valid Obsidian vault (all markdown); GBrain engine is filesystem-agnostic; Git provides audit trail for agent writes that Obsidian Sync would lose; could run both simultaneously. Also in this session: Sean archived `openhue` (smart-home skill) to save tokens. *self-described: Sean's direct question and reasoning, 2026-04-21.*
