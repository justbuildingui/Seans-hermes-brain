---
aliases: ["Check against upstream docs before agreeing", "Is that what the docs say?", "Verify recommendation against the tool's own docs", "Is 1 what the gbrain docs say"]
tags: [sean-principle, operating-preference, epistemics, verification, agent-behavior]
stage: active
---

# Check Against Upstream Docs Before Agreeing

> Sean's reflexive epistemic move: before accepting an agent's recommendation, he checks whether it actually matches what the tool's own documentation says. Don't take the agent's word for it. Go to the source.

## State
- **Principle (exact phrasing):** "Is 1 what the g brain docs say?"
- **Context originated:** 2026-04-20. Ollie presented two options for where identity files should live and recommended option 1. Before accepting, Sean asked whether option 1 was actually what the GBrain docs recommended. The move was reflexive — he did not agree to the recommendation until it was verified against upstream.
- **Operational meaning:** Sean treats an agent's recommendation as a hypothesis, not a conclusion. The agent's authority comes from the upstream source (GBrain docs, Garry Tan's conventions, `AGENTS.md`, `RESOLVER.md`), not from the agent's own reasoning. If the recommendation and the source disagree, the source wins.
- **Related but distinct from [hold-the-line-on-upstream-rules](hold-the-line-on-upstream-rules.md):**
  - *Hold-the-line* = agents should push back on Sean when Sean's instruction violates upstream rules.
  - *Check-against-upstream-docs* = Sean pushes back on agents when the agent's recommendation might not match upstream rules.
  - Both principles treat upstream documentation as the load-bearing authority. They are the two directions of the same discipline.

## Implications
- Before Sean commits to a recommendation, expect him to ask "is that what the docs say?" — answer with the actual doc citation, not a paraphrase.
- When recommending anything tied to a documented tool (GBrain, GStack, etc.), pre-empt this by citing the doc up front: "the GBrain docs say X, so I recommend Y."
- This is a verified-facts-over-aspirational-claims pattern — same shape as "I 100% want to ensure that sonnet is what's using this," where Sean refused to accept that Sonnet was running until it was directly observed.
- The combination of this principle and hold-the-line-on-upstream-rules means: upstream documentation is the shared authority both parties defer to. The agent's job is to know it; Sean's job is to verify the agent knows it.

## Open Threads
- Encode as a brain-ops pattern: whenever recommending a choice that touches a documented tool, surface the relevant doc citation before the recommendation, not after.

## See Also
- [originals/hold-the-line-on-upstream-rules.md](hold-the-line-on-upstream-rules.md) — companion principle; agents should refuse instructions that violate upstream rules
- [originals/always-want-the-simple.md](always-want-the-simple.md) — adjacent bias: simple + verified > clever + assumed
- [originals/brain-repo-owns-identity.md](brain-repo-owns-identity.md) — the decision that triggered this check
- [AGENTS.md](../AGENTS.md) — Iron Law #1 (brain-first lookup); same epistemic shape applied to factual questions
- [concepts/gbrain.md](../concepts/gbrain.md) — the upstream authority being checked in the originating moment
- [Garry Tan](../people/garry-tan.md) — author of the GBrain docs Sean reflexively defers to

---
<!-- timeline — append-only, reverse chronological -->

## 2026-04-20 — original captured
During an identity-wiring discussion, Ollie recommended option 1 (brain repo owns identity). Sean's first response was not agreement but verification: "Is 1 what the g brain docs say?" — a reflexive check of the recommendation against the tool's own documentation. This pattern — treat agent recommendations as hypotheses until they are sourced to upstream docs — became a durable operating principle. It complements [hold-the-line-on-upstream-rules](hold-the-line-on-upstream-rules.md) from the opposite direction: agents push back when Sean violates upstream rules; Sean pushes back when agents might be misquoting them. observed: Hermes identity-wiring conversation with Ollie, 2026-04-20.
