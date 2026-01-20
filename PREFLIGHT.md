# Preflight (Before Changing Anything)

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

