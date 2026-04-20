# RESOLVER.md — Master Filing Decision Tree

Read this before creating any new page. Walk the numbered list top to bottom.
Stop at the first match.

## Decision Tree

1. **Is it a specific human being?** → `people/<first-last>.md`
2. **Is it an organization (company, fund, nonprofit)?** → `companies/<slug>.md`
3. **Is it a specific financial transaction with terms?** → `deals/<slug>.md`
4. **Is it a record of a specific meeting or event (with transcript/notes)?** → `meetings/<YYYY-MM-DD-slug>.md`
5. **Is it a curated tweet worth preserving?** → `tweets/<handle-YYYYMMDD>.md` (link to `people/` and `concepts/`)
6. **Is someone actively building it (repo/spec/team exists)?** → `projects/<slug>.md`
7. **Is it a raw possibility nobody is building yet?** → `ideas/<slug>.md`
8. **Is it a mental model or framework you'd teach?** → `concepts/<slug>.md`
9. **Is it a prose artifact (essay, draft, philosophy)?** → `writing/<slug>.md`
10. **Is it a major life workstream (the forest, not the trees)?** → `programs/<slug>.md`
11. **Is it about your institution's internal strategy/ops?** → `org/<slug>.md`
12. **Is it about political landscape, policy, government?** → `civic/<slug>.md`
13. **Is it about narrative, content ops, social monitoring?** → `media/<slug>.md`
14. **Is it private reflection / personal / health?** → `personal/<slug>.md`
15. **Is it domestic ops / properties / logistics?** → `household/<slug>.md`
16. **Is it a hiring candidate pipeline?** → `hiring/<slug>.md`
17. **Is it a reusable LLM prompt?** → `prompts/<slug>.md`
18. **Is it raw multi-entity source data?** → `sources/<slug>.md`
19. **Doesn't fit anywhere?** → `inbox/<slug>.md` (and flag that the schema may need to evolve)

## Key Disambiguation Rules

- **Concept vs. Idea:** Could you *teach* it? → concept. Could you *build* it? → idea.
- **Idea vs. Project:** Anyone working on it? Yes → project. No → idea.
- **Concept vs. Writing:** Distilled 200-word framework → concept. Developed prose → writing.
- **Writing vs. Media:** Essay itself → writing. Publishing pipeline → media.
- **Person vs. Company:** About the human → people/. About the org → companies/. Both link to each other.
- **Household vs. Personal:** PA could execute it → household. Private reflection → personal.
- **Sources vs. .raw/:** Per-entity API response → `.raw/` next to entity page. Bulk multi-entity dump → sources/.
- **Tweet vs. Person:** The individual tweet → tweets/. The author's broader bio → people/.

## Deduplication Protocol

Before creating a new person/company page:
1. Search by name (exact and fuzzy) across existing pages
2. Search frontmatter `aliases:` across all pages
3. Check `.raw/` sidecars for matching email/handle
4. Match found → UPDATE the existing page (add alias)
5. No match → CREATE new page

## Canonical Slugs

- People: `first-last.md` — collisions get org suffix (`david-liu-crustdata.md`)
- Companies: `company-name.md`
- Tweets: `handle-YYYYMMDD.md` (add `-1`, `-2` for multiple same-day tweets)

## Page Structure

Every brain page has two layers separated by `---`:
- **Above the line — Compiled Truth.** Always current, always rewritten. Executive summary first.
- **Below the line — Timeline.** Append-only, reverse-chronological. Date, source, what happened.

See `schema.md` for page templates.
