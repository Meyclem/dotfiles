# Dotfiles

Just a basic dotfiles repository

## Usage

```sh
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew bundle --file=~/Users/meyclem/dotfiles/Brewfile
```

Link dotfiles:

```sh
rcup
```

Change shell to use `zsh`:

```sh
chsh -s /bin/zsh
```

If you run into a warning with `compaudit`, fix permissions with:

```sh
compaudit | xargs chown -R "$(whoami)"
compaudit | xargs chmod go-w
```

You are now good to go 🚀
