# Homebrew Tap for Close My Lid

This is the official Homebrew tap for [Close My Lid](https://github.com/krishkalaria12/close-my-lid).

## Install the macOS app

```sh
brew install --cask krishkalaria12/close-my-lid/close-my-lid
```

## Install the CLI

```sh
brew install krishkalaria12/close-my-lid/close-my-lid
```

## Migrate an older custom tap

If you installed Close My Lid before this dedicated tap existed, replace the old custom tap clone. Installed packages are preserved:

```sh
brew untap --force krishkalaria12/close-my-lid
brew tap krishkalaria12/close-my-lid
```

Then update normally:

```sh
brew update
brew upgrade --cask close-my-lid
```

Package updates are generated from published releases in the main project and merged only after this repository's validation checks pass.
