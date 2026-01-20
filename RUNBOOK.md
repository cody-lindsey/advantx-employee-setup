# Runbook

## Purpose

Maintain and publish the public Day‑0 onboarding page.

## Preflight

Follow `PREFLIGHT.md`.

## Update flow

1) Edit `index.html` and any image assets.
2) Run verification:

```bash
sh scripts/verify.sh
```

3) Commit and push to `main`.

## Deployment

This repo is intended to be hosted as a static site (e.g., GitHub Pages). Publishing is driven by the repo’s hosting configuration; no secrets are required.

