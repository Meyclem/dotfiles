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

In case you need to generate a new SSH key:

```sh
mkdir -p ~/.ssh && ssh-keygen -t ed25519 -o -a 100 -f ~/.ssh/id_ed25519 -C "TYPE_YOUR_EMAIL@HERE.com"
gh auth refresh -h github.com -s admin:public_key
gh ssh-key -t "DEVICE_NAME" add ~/.ssh/id_ed25519.pub
```

You are now good to go 🚀
