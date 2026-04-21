---
aliases: ["Obsidian", "Obsidian Sync", "obsidian vault"]
tags: [tool, knowledge-management, markdown, sync]
---

# Obsidian

> Markdown-based personal knowledge management app. Local-first; files are plain `.md`. Has a paid sync service (Obsidian Sync) for cross-device access.

## Relevance to Sean

Sean explored whether Obsidian could serve as the storage hub for [GBrain](gbrain.md) files instead of GitHub. Key finding: `~/brain/` is **already a valid Obsidian vault** since all files are plain markdown. The [GBrain](gbrain.md) engine (PGLite, gbrain CLI) is filesystem-agnostic.

The distinction: GitHub provides an **audit trail for agent writes** that Obsidian Sync would lose. The two are not mutually exclusive — Obsidian can be used as a read/browse layer over `~/brain/` while git remains the authoritative sync + version layer.

## See Also

- [concepts/gbrain.md](gbrain.md)
- [originals/obsidian-as-storage-hub-for-gbrain.md](../originals/obsidian-as-storage-hub-for-gbrain.md)
- [originals/brain-repo-owns-identity.md](../originals/brain-repo-owns-identity.md)
- [originals/complete-means-pushed-to-github.md](../originals/complete-means-pushed-to-github.md)

---
<!-- timeline — append-only, reverse chronological -->

## 2026-04-21 — First mention; Sean explored Obsidian as GBrain storage hub
Sean asked "What would happen if we use obsidian as our storage hub for g brain files instead of GitHub?" Conclusion: `~/brain/` is already valid as an Obsidian vault; could run both; git audit trail is the key differentiator. See [originals/obsidian-as-storage-hub-for-gbrain.md](../originals/obsidian-as-storage-hub-for-gbrain.md). *self-described: Sean's direct question, 2026-04-21.*
