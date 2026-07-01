# homebrew-tap

Homebrew tap for [**outbox-md**](https://github.com/rajanrx/outbox-md) — local-first, agent-agnostic review for AI-generated Markdown specs.

## Install

```bash
brew install rajanrx/tap/outbox-md
```

(Equivalent to `brew tap rajanrx/tap && brew install outbox-md`.)

Then:

```bash
cd path/to/your/specs
outbox init
outbox up
```

## Update

```bash
brew upgrade outbox-md
```

## Notes

- The formula installs a prebuilt binary from the [outbox-md GitHub Releases](https://github.com/rajanrx/outbox-md/releases) (macOS + Linux, arm64 + amd64).
- Full docs: **[outbox-md README](https://github.com/rajanrx/outbox-md#readme)** and **[Setup & Usage Guide](https://github.com/rajanrx/outbox-md/blob/main/SETUP.md)**.

## License

MIT.
