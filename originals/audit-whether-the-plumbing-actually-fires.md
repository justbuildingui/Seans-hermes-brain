---
aliases: ["Audit whether the plumbing actually fires", "Is it actually firing", "Is the subagent actually running", "Verify the wiring runs, not just that it's configured", "Plumbing audit"]
tags: [sean-principle, operating-preference, epistemics, verification, agent-behavior, plumbing, cron]
stage: active
---

# Audit Whether the Plumbing Actually Fires

> Sean does not trust a pipeline because it's configured — he trusts it when he's watched it run. A recurring move: ask, on live inbound messages, whether the cron/subagent/hook he was told exists is actually executing right now.

## State
- **Principle (exact phrasing):** "is it actually firing on these messages" — asked of the signal-detector subagent on 2026-04-20 after Ollie described it as always-on.
- **Earlier instance (same shape, different surface):** "I 100% want to ensure that sonnet is what's using this" — refusing to accept that Sonnet 4.5 was actually the model serving delegated subagents until it was directly verified in `~/.hermes/config.yaml`, not just asserted.
- **Context originated:** 2026-04-20 Hermes/GBrain bring-up. Over a single conversation Sean repeatedly redirected from *"is the wiring described correctly?"* to *"is the wiring observably executing right now?"* — first on the Sonnet routing claim, then on the signal-detector firing on every inbound message.
- **Operational meaning:** Configuration is a claim. Execution is a fact. Sean treats every piece of infra plumbing (cron jobs, hooks, subagents, auto-commits, pushes) as unproven until he's seen it leave a trace — a commit, a log line, a brain page, a signal-log entry. The *description* of the pipeline is never load-bearing; the *evidence it ran* is.

## Implications
- When claiming a cron/hook/subagent is wired up, follow the claim with the *evidence trail* that proves it ran (last commit SHA, log line, file it wrote, timeline entry it appended). Don't stop at "it's configured."
- Expect mid-conversation "is this firing right now?" checks on ambient systems (signal-detector, 15m live-sync, auto-embed, tweet-ingest). Answer with a concrete artifact, not a restatement of the config.
- Build every piece of plumbing to leave a loud, auditable trace by default — a one-line log, a commit, a brain-page diff. Silent plumbing fails this test even when it works.
- Dovetails with [check-against-upstream-docs-before-agreeing](check-against-upstream-docs-before-agreeing.md): both treat the agent's assertion as a hypothesis that must be sourced to something external. Docs in one direction, runtime evidence in the other.

## Open Threads
- Make signal-detector dispatch emit a visible one-line `Signals: …` log at the end of every delegation so Sean can audit the ambient loop without asking.
- Same for the 15m live-sync cron and the 4h auto-update cron — surface last-run timestamp + last-commit SHA somewhere Sean can glance at (`HEARTBEAT.md`?).
- Every cron in the active-jobs table in [AGENTS.md](../AGENTS.md) should have a documented "how to verify it last ran" one-liner.

## See Also
- [originals/check-against-upstream-docs-before-agreeing.md](check-against-upstream-docs-before-agreeing.md) — companion epistemic move (verify agent claims against upstream docs); this principle is the runtime-evidence twin of that one
- [originals/complete-means-pushed-to-github.md](complete-means-pushed-to-github.md) — same family: "done" means the observable artifact exists (commit on origin), not that the work was described as done
- [originals/hold-the-line-on-upstream-rules.md](hold-the-line-on-upstream-rules.md) — agents defer to sources of truth; this principle says Sean also demands runtime proof, not just doctrinal compliance
- [originals/always-want-the-simple.md](always-want-the-simple.md) — adjacent bias: simple systems are easier to audit for "did it fire?"
- [AGENTS.md](../AGENTS.md) — Iron Law #0 (signal-detector subagent MANDATORY) and the Active cron jobs table — the specific plumbing being audited
- [concepts/gbrain.md](../concepts/gbrain.md) — GBrain is the substrate whose ambient wiring is under audit

---
<!-- timeline — append-only, reverse chronological -->

## 2026-04-20 — original captured
On the same Hermes/GBrain bring-up day, Sean twice pressure-tested ambient infra against runtime evidence rather than configuration claims. First: "I 100% want to ensure that sonnet is what's using this" — not accepting that delegated subagents ran on Sonnet 4.5 until `~/.hermes/config.yaml` was inspected and `delegation.model: anthropic/claude-sonnet-4.5` was read out. Second: after Ollie confirmed the signal-detector subagent exists and is pinned to Sonnet, Sean asked "is it actually firing on these messages and what is it called" — refusing to treat "it's wired up" as proof that the loop was actually running. Both moments share the same shape: an assertion about plumbing is not a fact about plumbing; only an observed trace is. observed: Hermes/GBrain bring-up conversation with Ollie, 2026-04-20 ~20:53 CT.
