# Dotfiles

Just a basic dotfiles repository

## Usage

```sh
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew bundle --file=<path to Brewfile>
```

Link dotfiles:

```sh
rcup -d <path to dotfiles folder>
```

If you run into a warning with `compaudit`, fix permissions with:

```sh
compaudit | xargs chown -R "$(whoami)"
compaudit | xargs chmod go-w
```

## Github

```sh
gh auth login -s 'user:email' -w
```

You are now good to go 🚀
