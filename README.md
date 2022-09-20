# Dotfiles

Just a basic dotfiles repository

## Usage

### Install Brew

```sh
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
```

### Install the Github CLI

```sh
brew install gh
```

Once the Github cli is installed (`gh`), you can then login and follow the steps:

```sh
gh auth login -s 'user:email' -w
```

### Install the dotfiles

```sh
cd && gh repo clone meyclem/dotfiles
brew bundle --file=dotfiles/Brewfile
```

Link dotfiles:

```sh
rcup -d dotfiles
```

Once it is done, quit and reopen the terminal.

If you run into a warning with `compaudit`, fix permissions with:

```sh
compaudit | xargs chown -R "$(whoami)"
compaudit | xargs chmod go-w
```

You are now good to go 🚀

## Utilities

You can run `first_setup_machine` if it's... the first setup of the computer.

And you can also run `stack_update` to... update the stack.
