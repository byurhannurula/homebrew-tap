# byurhannurula/homebrew-tap

Homebrew casks for my apps.

## Install

```sh
brew install --cask byurhannurula/tap/jotter
```

(Shorthand for `brew tap byurhannurula/tap` followed by `brew install --cask jotter`.)

## Apps

| Cask | Description |
| --- | --- |
| [`jotter`](Casks/jotter.rb) | A fast, minimal notepad — [byurhannurula/jotter](https://github.com/byurhannurula/jotter) |

## Notes

- Builds are **not code-signed / notarized**. On first launch macOS Gatekeeper will
  block the app: **System Settings → Privacy & Security → Open Anyway**, or run
  `xattr -dr com.apple.quarantine /Applications/Jotter.app`.
- Cask versions are updated automatically when a new release is published.

## Updating

```sh
brew update && brew upgrade --cask jotter
```
