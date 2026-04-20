---
aliases: ["Brain repo owns identity", "GBrain is canonical home for SOUL/AGENTS", "Everything symlinks to the brain", "Identity lives in the brain, not in config"]
tags: [sean-principle, operating-preference, architecture, identity, gbrain]
stage: active
---

# Brain Repo Owns Identity

> Sean's architectural rule: identity files (SOUL.md, AGENTS.md) live in the brain repo as the single source of truth. Everywhere else — Hermes config, `/AGENTS.md`, any future deployment — symlinks back. One edit, one commit, one GitHub history.

## State
- **Principle (exact phrasing):** "Lets do 1 and have that as the key file to follow on the seans-hermes-brain please"
- **Context originated:** 2026-04-20. While wiring identity, Ollie offered Sean two options: (1) keep SOUL.md/AGENTS.md in the brain repo and symlink Hermes config to it, or (2) keep them in Hermes config and copy into the brain. Sean chose option 1.
- **What it means in practice:**
  - `~/brain/SOUL.md` and `~/brain/AGENTS.md` are the real files (pushed to `github.com/justbuildingui/Seans-hermes-brain`).
  - `~/.hermes/SOUL.md`, `~/.hermes/AGENTS.md`, `/AGENTS.md` are symlinks back to the brain.
  - The 15-minute `gbrain-live-sync` cron auto-commits and pushes any identity edit.
  - Git history of the brain repo = full operational history of agent identity.
- **Why it matters:** Identity is versioned, diffable, and backed up the moment it changes. No drift between "what the config says" and "what the brain says." Everything compounds into the same repo.

## Implications
- Edit brain-side files to change agent behavior. Never edit the symlinks.
- New deployments (new machine, new agent platform) adopt identity by symlinking — not by copying.
- Pre-symlink backups exist at `~/.hermes/SOUL.md.pre-brain-bak` and `~/.hermes/AGENTS.md.pre-brain-bak` for unwinding.
- This is a specific instance of Sean's broader [always-want-the-simple](always-want-the-simple.md) bias: one canonical location, no duplication.

## Open Threads
- If Sean adds agents on new platforms (Codex, Claude Desktop, etc.), the pattern is the same: symlink into `~/brain/`.
- SOUL.md is still young — expect heavy edits over the next few weeks as the agent cast stabilizes.

## See Also
- [AGENTS.md](../AGENTS.md) — "Identity architecture" section documents the symlink chain
- [SOUL.md](../SOUL.md) — the identity file this principle protects
- [originals/always-want-the-simple.md](always-want-the-simple.md) — companion simplicity bias
- [originals/complete-means-pushed-to-github.md](complete-means-pushed-to-github.md) — completion discipline; brain-owned identity only works if it's pushed
- [concepts/gbrain.md](../concepts/gbrain.md) — the tool that hosts the canonical files
- [Garry Tan](../people/garry-tan.md) — author of GBrain, whose design assumes a single brain repo as source of truth
- [originals/if-its-not-in-the-repo-it-doesnt-exist.md](if-its-not-in-the-repo-it-doesnt-exist.md) — generalizes this rule from identity to all durable state

---
<!-- timeline — append-only, reverse chronological -->

## 2026-04-20 — referenced in new original
Cited as the architectural twin of [if-its-not-in-the-repo-it-doesnt-exist](if-its-not-in-the-repo-it-doesnt-exist.md). That page generalizes the same logic beyond identity: any durable state (scripts, PATH fixes, symlinks, env bootstrap) must live in the brain repo, not in session-local filesystem. Triggered after Sean caught Ollie making `/usr/local/bin` symlinks and PATH changes that weren't committed. observed: signal-detector capture, 2026-04-20.

## 2026-04-20 — original captured
Sean chose GBrain as the canonical home for SOUL.md and AGENTS.md when asked whether to house them in the brain repo or in `~/.hermes/`. Exact phrasing: "Lets do 1 and have that as the key file to follow on the seans-hermes-brain please." This established the operating principle that the brain repo owns identity and all other locations symlink back. Pre-symlink backups of the prior Hermes-config versions were preserved as `.pre-brain-bak`. observed: Hermes identity-wiring conversation with Ollie, 2026-04-20.
