# HEARTBEAT.md — Operational Cadence

Sean's recurring jobs. Skip morning briefing and end-of-day digest (explicitly declined 2026-04-20).

## Cron Jobs

| Cadence | Job | Purpose | Model |
|---------|-----|---------|-------|
| Every 15 min | `gbrain sync --repo ~/brain && gbrain embed --stale` | Pull new notes, re-embed stale chunks | n/a (deterministic) |
| Hourly *(paused)* | Tweet ingest via xurl — fetch new bookmarks/likes, file into `tweets/`, enrich entities | Keep the brain current with Sean's signal stream. Resume once xurl is authenticated. | Sonnet |
| Daily 2am CT | Dream cycle — entity sweep, citation fixes, link-graph extraction, de-dupe | What makes the brain compound | Sonnet |
| Weekly Sunday 7am CT | `gbrain doctor --json && gbrain embed --stale` | Health check, backfill embeddings | n/a |
| Daily | `gbrain check-update --json` | Tell Sean about new gbrain releases (never auto-install) | n/a |

## Not running

- Morning briefing — declined
- End-of-day digest — declined

## Model policy

- **Interactive chat (Ollie)** — Opus 4.7 (current)
- **Background/recurring jobs** — Claude Sonnet 4.5 (cheaper, no one is waiting)

## Re-audit

Re-run Phase 6 of soul-audit to change cadence.
