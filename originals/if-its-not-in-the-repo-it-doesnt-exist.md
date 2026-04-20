---
aliases: ["If it's not in the repo it doesn't exist", "All of our stuff should be there", "Durable state belongs in the brain repo", "No session-local filesystem changes", "Repo is the canonical surface"]
tags: [sean-principle, operating-preference, durability, architecture, gbrain, brain-repo]
stage: active
---

# If It's Not in the Repo, It Doesn't Exist

> Sean's durability rule: any change meant to persist — configs, scripts, symlinks, PATH fixes, environment bootstrap — belongs in the brain repo on GitHub. Session-local filesystem edits are drift, not work. The repo is the canonical surface; anything outside it is presumed gone.

## State
- **Principle (exact phrasing):** "You're doing this on the github of sean-hermes-brain right? All of our stuff should be there."
- **Context originated:** 2026-04-20 Telegram thread. Sean caught Ollie making session-local filesystem changes (symlinks in `/usr/local/bin`, PATH fixes for delegated subagents) that weren't committed to `~/brain/`. Ollie acknowledged the drift, then moved the fix into the repo: updated `~/brain/AGENTS.md` §0 signal-detector template to export PATH explicitly, and added `~/brain/scripts/bootstrap-agent-env.sh` as an idempotent fresh-environment recovery script. Pushed as commit `18854fd` to `origin/main`.
- **Operational meaning:** If a fix lives only on the running container's filesystem, it does not exist as far as the next agent, the next session, or the next machine is concerned. Durable means committed. Committed means on GitHub. Workarounds that aren't in the repo are technical debt disguised as progress.

## Implications
- Every environmental tweak (PATH, symlinks, cron entries, shell rc edits, service configs) that matters beyond the current shell must ship as a repo-committed script or doc edit — never as a live-filesystem mutation.
- "It works on my container" is not a valid ship state. Verify fresh-environment reproducibility with stripped `PATH` / unsourced `~/.bashrc` before declaring a fix complete.
- Recovery scripts like `~/brain/scripts/bootstrap-agent-env.sh` are how ephemeral truths get promoted into durable ones. Write one every time you notice yourself fixing the same session twice.
- Corollary: before starting any fix, ask "where in the repo does this belong?" If the answer is "nowhere," you're about to create drift.

## Related principles
- Narrower specialization of [complete-means-pushed-to-github](complete-means-pushed-to-github.md) — that one sets the *timing* of done (push = complete); this one sets the *location* of durability (repo = the only place state counts).
- Architectural twin of [brain-repo-owns-identity](brain-repo-owns-identity.md) — identity lives in the brain repo; so does every other durable artifact, by the same logic.
- Same family as [audit-whether-the-plumbing-actually-fires](audit-whether-the-plumbing-actually-fires.md) — both demand an observable artifact (a commit / a trace) as proof, not a described state.

## Open Threads
- Agent self-audit: at the end of any task that touched the filesystem outside `~/brain/` or `~/gbrain/`, list every path mutated and justify why each is ephemeral (or commit it).
- Consider a pre-exit hook that scans `/usr/local/bin`, `~/.hermes/`, and other session-touched dirs for un-repo'd symlinks and warns.

## See Also
- [AGENTS.md](../AGENTS.md) — §0 signal-detector template and subagent environment gotcha, both now repo-committed per this principle
- [scripts/bootstrap-agent-env.sh](../scripts/bootstrap-agent-env.sh) — the recovery script that embodies this rule
- [originals/complete-means-pushed-to-github.md](complete-means-pushed-to-github.md) — sibling principle (timing of done)
- [originals/brain-repo-owns-identity.md](brain-repo-owns-identity.md) — sibling principle (identity as repo-owned)
- [originals/audit-whether-the-plumbing-actually-fires.md](audit-whether-the-plumbing-actually-fires.md) — sibling epistemic rule (observable artifacts over claims)
- [concepts/gbrain.md](../concepts/gbrain.md) — the substrate these durability rules protect

---
<!-- timeline — append-only, reverse chronological -->

## 2026-04-20 — original captured
Sean caught Ollie making session-local filesystem changes (symlinks in `/usr/local/bin`, PATH fixes enabling `gbrain` resolution in delegated subagents) without committing them to the brain repo. Sean's correction, verbatim: "You're doing this on the github of sean-hermes-brain right? All of our stuff should be there." Ollie acknowledged the drift, then moved the fix into the repo — updating `~/brain/AGENTS.md` §0 signal-detector template to export `PATH` as its first act, and adding `~/brain/scripts/bootstrap-agent-env.sh` as an idempotent fresh-environment recovery script. Pushed as commit `18854fd` to `origin/main` and verified under a stripped environment (subagents spawn with `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin` and do NOT source `~/.bashrc`). This exchange crystallized the durability rule as a standalone principle distinct from — and narrower than — "complete means pushed to GitHub": this one says *where* durable state must live; the other says *when* work is done. observed: Telegram thread with Ollie, 2026-04-20.
