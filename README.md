# homebrew-berth

A [Homebrew](https://brew.sh) tap for [Berth](https://github.com/eirsyl/berth) - a local-only
desktop app for running multiple CLI coding agents in parallel, each in its own git worktree with
its own isolated development slot.

## Install

```sh
brew install --cask eirsyl/berth
```

That expands to tapping `eirsyl/homebrew-berth` and installing the `berth` cask from it. Berth is
signed with a Developer ID certificate and notarized by Apple, so it opens on a machine that has
never seen it before.

The cask also links the CLI onto your `PATH` as `berth`. It is the same binary the app itself
spawns, so the two peers stay peers.

## Update

```sh
brew upgrade --cask berth
```

## Uninstall

```sh
brew uninstall --cask berth
```

Add `--zap` to also remove Berth's configuration and slot state under `~/.berth`.

## What's here

- `Casks/berth.rb` - the cask, kept current by the release script in the
  [berth](https://github.com/eirsyl/berth) repo.
- GitHub Releases - the signed, notarized `.dmg` and `.zip` the cask downloads.

Requires an Apple silicon (arm64) Mac.
