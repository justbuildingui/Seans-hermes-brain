# schema.md — Page Conventions

## Two-layer structure

Every page:

```markdown
# <Title>

> Executive summary (1 paragraph): who/what, why it matters, current state.

## State
- **Key:** value
- ...

## Open Threads
- Active item 1 — owner, next step
- Active item 2

## See Also
- [related-page](../category/slug.md)

---
<!-- timeline — append-only, reverse chronological -->

## 2026-04-20 — <source>
What happened. Source: [link](url) or `.raw/<file>`.
```

## Frontmatter

Structured metadata for anything you'd query:

```yaml
---
aliases: ["Alt Name", "Nickname"]
tags: [founder, ai, nyc]
stage: series-a
---
```

## Citations (iron law)

Every factual claim gets a source. Three tiers:
- **observed:** direct evidence (tweet, meeting, doc) — cite it
- **self-described:** they said it (interview, bio) — cite it
- **inferred:** pattern across N interactions — note confidence (high/medium/low)

Bare claims without sourcing fail the quality gate.

## Back-linking

Every cross-reference uses the filename slug: `[Name](../people/first-last.md)`. Typed links
(the graph layer) are extracted automatically by `gbrain extract links`.

## `.raw/` sidecars

Per-entity API responses live next to the entity page in a `.raw/` directory:
`people/jane-doe.md` ↔ `people/.raw/jane-doe-linkedin-2026-04-20.json`.
