# Ben Barber's XDG Dotfiles 2023

These are my config files for setting up a MacOS/Linux system for the way I like to work.
By managing my configuration through this git repository I can simply pull in any changes
using git and run the installer to bring everything up to date.

I have done a big refactor of these for 2023, removing [YADM](https://thelocehiliosan.github.io/yadm/) and some other unnecessary dependencies in favour of putting everything into an [XDG base directory](https://wiki.archlinux.org/title/XDG_Base_Directory) directory thats basically a git repo thats activated via a few symlinks to the users $HOME directory.

It comes with its own `dotfiles` CLI tool that you run whenever you make any changes to keep everything installed and up to date with your latest `.config`.

## Installation

To get started its optional but its best to first fork this repo or use it as a template for your own repo so you can keep your own changes versioned and backed up.

You can then get setup on your machine by running the following;

```bash
git clone https://github.com/benbarber/dotfiles.git ~/.config
cd ~/.config
```

(change the GitHub URL to point to your own fork/repo if you if you chose to do that).

The main file you'll want to change at first is `./zsh/zshrc.sylk`, which sets up
a few paths that'll be different on your particular machine. You may then want to add or
remove some of the packages and applications that are listed in `./homebrew/Brewfile`.

Then once your happy you can run the `./setup` script which will get everything up and
running for you. This will symlink any appropriate files in `~/.config` with a `.sylk` extention to your home
directory and then install anything you have configured in the `Brewfile`.

Everything is then configured within `~/.config`, and after you make any changes you can run the following to apply them:

```
dotfiles install
```

This will install any new dependencines and apply any changes you have made. You can also run `dotfiles --help` to get
some other options that are available.

If you forked or setup your own repo, you can simpy git commit and push any changes you want back up your GitHub repo.

## Troubleshooting

If you get a permissions error when trying to run the setup or and of the scripts included
in `/bin` you can make sure they have the correct permissions by running the chmod
commands below.

```bash
chmod +x ./setup
chmod +x ./bin/*
```

## License

Copyright (c) 2017 Ben Barber

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
