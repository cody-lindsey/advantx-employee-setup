# Advantx Employee Setup (Day‑0) — Playbook (How work is done)

This playbook describes the preferred workflow for maintaining the public Day‑0 onboarding page.

## Principles

- Public and generic: no internal SharePoint/Teams links and no tenant-only resources.
- No secrets and no employee PII/PHI.
- Keep the site static and resilient (single-page HTML).

## Workflow

1) Preflight
- Follow `PREFLIGHT.md`.

2) Edit
- Update `index.html` and any image assets as needed.
- Keep wording simple and non-sensitive.

3) Verify

```bash
sh scripts/verify.sh
```

4) Commit + push
- Commit only the intended edits; avoid unrelated file churn.

