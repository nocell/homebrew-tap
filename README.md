# Homebrew tap for Triad

Install the latest published Triad release on macOS:

```bash
brew install nocell/tap/triad
```

The `Sync Triad formula` workflow checks the latest
[`nocell/triad-harness`](https://github.com/nocell/triad-harness) release, validates its
published formula, installs the checksummed binary on a clean macOS runner, and commits the
formula only after those checks pass.
