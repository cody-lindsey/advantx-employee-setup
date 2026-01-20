# Constraints (Non‑negotiable)

## Scope

- This repo is a public/static Day‑0 onboarding page.
- Allowed content: sign-in steps, MFA setup, troubleshooting, and generic Microsoft links.

## Hard prohibitions

- No internal SharePoint links, internal Teams links, or tenant-only resources.
- No secrets (tokens, keys, credentials).
- No employee PII/PHI.

## Operational invariants

- Keep it static (single-page HTML + images).
- CI verification must remain lightweight (see `scripts/verify.sh`).

