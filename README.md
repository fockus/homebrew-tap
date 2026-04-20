# fockus/homebrew-tap

Homebrew tap for [fockus](https://github.com/fockus) tools.

## Install

```bash
brew tap fockus/tap
brew install memory-bank
```

## Formulae

- [`memory-bank`](Formula/memory-bank.rb) — Universal long-term project memory for AI coding clients (Claude Code, Cursor, Windsurf, Cline, Kilo, OpenCode, Codex, Pi Code). Upstream: [fockus/skill-memory-bank](https://github.com/fockus/skill-memory-bank).

## Updating

Formulae track PyPI releases. Each new `v*` tag in the upstream repo triggers
PyPI publish, after which `brew bump-formula-pr` can refresh the URL/SHA here.
