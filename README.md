# Homebrew Tap for takish

This is a Homebrew tap for distributing CLI tools and applications.

## Installation

```bash
# Add the tap
brew tap takish/tap

# Install a package
brew install flappy-bird-tui
brew install git-trainer
brew install pkt-monitor
```

## Available Packages

- **flappy-bird-tui**: Terminal-based Flappy Bird clone built with Go and Bubble Tea
- **git-trainer**: Git/GitHubの基本操作を安全な疑似環境で学べるTUIゲーム
- **pkt-monitor**: libpcapを使ったクロスプラットフォームパケットモニター（ncurses TUI対応）

## Usage

```bash
# Install
brew install flappy-bird-tui
brew install git-trainer
brew install pkt-monitor

# Upgrade
brew upgrade flappy-bird-tui
brew upgrade git-trainer
brew upgrade pkt-monitor

# Uninstall
brew uninstall flappy-bird-tui
brew uninstall git-trainer
brew uninstall pkt-monitor
```

## For Developers

See [#1](https://github.com/takish/homebrew-tap/issues/1) for instructions on adding new packages to this tap.
