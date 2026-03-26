# Homebrew Tap for Governor

Blind attribution scoring for AI agent actions. Governor wraps any shell command and scores it against a configurable attribute catalog before allowing execution.

## Install

```bash
brew tap tymrtn/governor
brew install governor
```

## Usage

```bash
# Ungoverned passthrough
governor ls -la

# Governed with attributes
governor rm -rf /tmp/old -- --attr destructive --just "cleanup"

# Admin: score attributes
governor admin score --attr user_requested --attr read_only
```

## Links

- [GitHub](https://github.com/tymrtn/governor)
- [Patent: Enforced Non-Self-Approval (US Provisional)](https://aposema.com)
