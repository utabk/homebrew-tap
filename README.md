# utabk/tap

Homebrew casks for [Marrow](https://github.com/utabk/marrow), a desktop GUI for the REA reverse engineering MCP.

```bash
brew tap utabk/tap
brew trust utabk/tap
brew install --cask utabk/tap/marrow
```

Marrow isn't signed yet, so macOS asks before the first launch. Add `--no-quarantine` to the
install command to skip that prompt.
