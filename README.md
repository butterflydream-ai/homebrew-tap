# homebrew-tap

Homebrew tap for [Coco](https://coco.butterflydream.ai/), a keyboard-driven
macOS launcher with clipboard history, live captions, and a plugin system.

This is a self-hosted tap, not part of the official `homebrew/cask`
repository (see "Notability" below).

## Install

```sh
brew install --cask butterflydream-ai/tap/coco
```

## Upgrade

Coco ships its own Sparkle-based auto-updater, so most users never need to
run `brew upgrade` — the app updates itself in the background. The cask sets
`auto_updates true` to tell Homebrew this. If you do want Homebrew to fetch
a newer cask definition (e.g. after this tap's `Casks/coco.rb` is bumped):

```sh
brew upgrade --cask coco
```

## Uninstall

```sh
brew uninstall --zap --cask coco
```

`--zap` also removes Coco's Application Support, Caches, and preferences
files, plus the `~/.coco` CLI install directory.

## Notability

Coco is not currently eligible for the official `homebrew/cask` repository:
homebrew/cask's [Acceptable Casks](https://docs.brew.sh/Acceptable-Casks)
policy expects independently verifiable public interest (stars, downloads,
press, or an established maintainer track record) beyond what a young,
privately-distributed app has accumulated so far. This tap exists so users
can install and upgrade Coco via Homebrew today; submitting to
`homebrew/cask` is a reasonable follow-up once that bar is met.
