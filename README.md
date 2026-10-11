# Homebrew tap for Crack Attack!

[Homebrew](https://brew.sh) cask for [Crack Attack! — Back From The Stack](https://github.com/thiosaur/crackattack),
the Rust rewrite of the classic puzzle game. Apple Silicon, macOS 11 or later.

## Install

```sh
brew install --cask thiosaur/tap/crackattack
```

The application is not signed by Apple, so macOS blocks it the first time: open it once, then
go to *System Settings → Privacy & Security* and click **Open Anyway** (macOS 14 and earlier:
right-click *Crack Attack.app* and choose **Open**). Or, from a terminal:

```sh
xattr -dr com.apple.quarantine "/Applications/Crack Attack.app"
```

## Update

```sh
brew update
brew upgrade --cask crackattack
```

## Uninstall

```sh
brew uninstall --cask crackattack        # keeps your settings and scores
brew uninstall --zap --cask crackattack  # also removes ~/Library/Application Support/crack-attack
```

Bugs in the game go to the [game's issue tracker](https://github.com/thiosaur/crackattack/issues);
problems with this cask can be reported [here](../../issues).
