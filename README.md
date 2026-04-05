# Homebrew Tap for Medha

[Medha](https://github.com/jayshah5696/medha) is a local-first SQL IDE for flat files.

## Install

```bash
brew tap jayshah5696/medha
brew install --cask medha
```

This installs the packaged macOS Electron app from the latest published GitHub Release.

Launch it with Spotlight, Launchpad, or from `/Applications/Medha.app`.

## Update

```bash
brew update
brew upgrade --cask medha
```

## Uninstall

```bash
brew uninstall --cask medha
```

## Troubleshooting

If Homebrew has stale metadata, refresh it before installing:

```bash
brew update
brew untap jayshah5696/medha
brew tap jayshah5696/medha
brew install --cask medha
```
