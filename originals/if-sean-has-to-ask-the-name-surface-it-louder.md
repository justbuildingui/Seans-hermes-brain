---
aliases: ["If Sean has to ask the name, the name needs to be louder", "Surface infra names where Sean lives", "Own-infra naming gap"]
tags: [sean-principle, operating-preference, agent-behavior, documentation, discoverability]
stage: active
---

# If Sean Has to Ask the Name of His Own Infra, the Name Needs Surfacing

> When Sean refers to one of his own running components by a generic description ("the signal detector subagent," "the thing that saves worth-keeping messages") instead of its actual configured name (`signal-detector`), that is a durable signal that the component's name and pointer are not surfaced prominently enough in the places he lives.

## State
- **Principle (exact phrasing, in the generating moment):** Sean asked which model "the signal detector" subagent uses, then clarified he meant "the subagent that reviews every message and saves worth-keeping signal to the brain." The component is named exactly `signal-detector` in `~/gbrain/skills/signal-detector/SKILL.md` and called out by that name in `~/brain/AGENTS.md` Iron Law #0 — but the name had not landed in Sean's working memory.
- **Context originated:** 2026-04-20 ~20:53 CT, Hermes/GBrain bring-up conversation with Ollie, while Sean was auditing whether the signal-detector was actually firing (see [audit-whether-the-plumbing-actually-fires](audit-whether-the-plumbing-actually-fires.md)).
- **Operational meaning:** A component's name is part of its interface. If Sean — the operator — has to describe the component to refer to it, his mental model of the system is missing a handle, and he can't audit or ask about it precisely. The fix is not "Sean should memorize names"; the fix is to surface the canonical name wherever Sean naturally encounters the component.

## Implications
- When answering "what is that thing called?" — always give the canonical name, the file path where it's defined, and where it's referenced in `AGENTS.md`. Three anchors, not one.
- Crons, subagents, hooks, and skills should be referred to by their canonical names in every agent reply that touches them — not by paraphrase. Consistency trains the handle.
- `AGENTS.md` Iron Law #0 already names `signal-detector` explicitly; `HEARTBEAT.md` and any ambient-loop dashboard should do the same — name + path + last-run evidence.
- This is a discoverability bug, not a user bug. Treat naming gaps as infra issues to fix by surfacing, not as Sean-education issues.

## Open Threads
- Consider a lightweight "infra glossary" section in `AGENTS.md` or `HEARTBEAT.md`: each ambient component → canonical name, defining file, last-run evidence pointer. One-line entries.
- When a subagent runs, include its canonical name in its closing signal-log line (`Signals: … — signal-detector`) so the name re-lands every time.

## See Also
- [originals/audit-whether-the-plumbing-actually-fires.md](audit-whether-the-plumbing-actually-fires.md) — the moment that generated this signal; same conversation, companion principle
- [originals/check-against-upstream-docs-before-agreeing.md](check-against-upstream-docs-before-agreeing.md) — adjacent: canonical names are part of what gets checked against upstream
- [originals/always-want-the-simple.md](always-want-the-simple.md) — simple systems have discoverable names by default; if the name is hard to recall, the surface is too cluttered
- [AGENTS.md](../AGENTS.md) — Iron Law #0 names `signal-detector`; the canonical reference this principle says should be surfaced more often
- [concepts/gbrain.md](../concepts/gbrain.md) — GBrain is the substrate whose components need surfaced names

---
<!-- timeline — append-only, reverse chronological -->

## 2026-04-20 — original captured
During the Hermes/GBrain bring-up conversation, Sean asked which model "the signal detector" subagent uses, then clarified he meant "the subagent that reviews every message and saves worth-keeping signal to the brain (part of GBrain logic)." The component is canonically named `signal-detector` in `~/gbrain/skills/signal-detector/SKILL.md` and surfaced in `~/brain/AGENTS.md` Iron Law #0, but that name had not crossed into Sean's working vocabulary. Captured as a durable operating signal: when the operator has to describe his own component instead of naming it, that's a surfacing gap in the docs/UX, not an operator gap. observed: Hermes/GBrain bring-up conversation with Ollie, 2026-04-20 ~20:53 CT.
