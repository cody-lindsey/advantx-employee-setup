# Preflight (Before Changing Anything)

## Agent preflight declaration (required)

Before making changes, explicitly state:

1) Files you intend to change
2) Which constraints apply (`AGENT.md`, `CONSTRAINTS.md`)
3) Which runbook governs the task (`RUNBOOK.md`, or “none”)
4) Protected zones touched? (yes/no; list paths if yes)
5) Verification you will run (or why you cannot)

## Confirm

- The change belongs in Day‑0 onboarding (sign-in/MFA) and not in the internal portal.
- Any links you add are public and safe to share outside the organization.

## Required checks

- `git status` is clean (or changes are intentional).
- Run the repo verification script:

```bash
sh scripts/verify.sh
```

## Abort conditions

- The change would introduce internal-only links or sensitive information.
