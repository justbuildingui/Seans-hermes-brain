---
aliases: ["Complete means pushed to GitHub", "Definition of complete", "Complete = shipped"]
tags: [sean-principle, definition-of-done, operating-preference]
stage: active
---

# Complete Means Pushed to GitHub

> Sean's definition of "complete" for brain work: it isn't done until it's filed on GitHub. Local-only changes don't count.

## State
- **Principle (exact phrasing):** "This is an example of the soul.md where I said to do everything completely. Filing this on Github is 'complete'"
- **Context originated:** GBrain install conversation, 2026-04-20, in reference to `SOUL.md`'s directive to do things completely. Sean invoked this after noticing work wasn't pushed to the remote.
- **Operational meaning:** A brain edit that lives only on the local disk is incomplete. The definition of done for any brain change is: import → embed → link-extract → commit → **push to origin**.

## Implications
- Every brain-write task must end with `git push` (or confirmation that the 15-min auto-push cron will handle it — and even then, if the task is "complete now," push manually).
- "Saved locally" is not a valid stopping point.
- Ties into SOUL.md's "do everything completely" directive — GitHub is the completeness boundary.

## Open Threads
- Bake this into the standard write-flow checklist so agents don't stop at `git commit`.

## See Also
- [SOUL.md](../SOUL.md) — source directive ("do everything completely")
- [AGENTS.md](../AGENTS.md) — Iron Law #6 (write flow), which should always terminate at a pushed state
- [originals/hold-the-line-on-upstream-rules.md](hold-the-line-on-upstream-rules.md) — companion principle on discipline
- [originals/audit-whether-the-plumbing-actually-fires.md](audit-whether-the-plumbing-actually-fires.md) — same family: "done" and "fired" are both observable-artifact tests, not claims

---
<!-- timeline — append-only, reverse chronological -->

## 2026-04-20 — referenced in new original
Cited as a sibling principle in [audit-whether-the-plumbing-actually-fires](audit-whether-the-plumbing-actually-fires.md) — both treat observable artifacts (a push to origin / a visible trace of execution) as the real completion/firing test, rather than a described state. observed: signal-detector capture, 2026-04-20.

## 2026-04-20 — original captured
Sean said: "This is an example of the soul.md where I said to do everything completely. Filing this on Github is 'complete'" during the GBrain install conversation with Ollie, defining the completeness threshold for brain work. observed: GBrain install conversation, 2026-04-20.
