# ~BenBarber's Dot Files

These are my config files for setting up a MacOS/Linux system for the way I like to work.

As I work across multiple machines I needed a way to make my development experience
consistent and reproducible across them all. By managing my configuration through this
git repository I can simply pull in any changes and run the installer to bring everything
up to date.

This is especially great for when I need to setup a new machine or re-format an existing
one.

The dotfiles are managed with [YADM](https://thelocehiliosan.github.io/yadm/) which works great.

## Installation

To get started simply run the bootstrap script with with a curl command.

```
curl -L https://raw.githubusercontent.com/BenBarber/dotfiles/master/bootstrap | bash
```
