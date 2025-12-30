# Advantx Employee Account Setup (Static Page)

This repo is a simple, static HTML page (`index.html`) used for employee onboarding/account setup instructions.

Program-wide standards (single source of truth in this workspace): `ops-repo/PROGRAM-STANDARDS.md`.

## Security

- This repo is **browser-delivered**. Do not add secrets (API keys, private keys, connection strings, tokens).

## CI

CI runs a lightweight secrets hygiene gate:

- GitHub Actions: `.github/workflows/verify.yml`
- GitLab CI: `.gitlab-ci.yml`
- Local: `sh scripts/verify.sh`

