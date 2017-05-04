# Ben Barber's Dot Files

These are my config files for setting up a MacOS/Linux system for the way I like to work. 

As I work across multiple machines I needed a way to make my development experience consistent and reproducible across them all. By managing my configuration through this git repository I can simply pull in any changes and run the installer to bring everything up to date.

This is especially great for when I need to setup a new machine or re-format an existing one.

## Installation

To get started simply clone this repository and run the installer.

```
git clone git://github.com/benbarber/dotfiles ~/.dotfiles

~/.dotfiles/install
```

The install will take you through setting up your Git Config, Installing any required software and then setup symlink's for the appropriate files in .dotfiles to your home directory.

## Customising

All your settings are configured within the ~/.dotfiles directory. You can make ay required changes and re-run the installer to bring everything up to date.

## Bugs, Issues and Contributing

I currently use this across multiple machines and it works great for me without any issues, but on the off chance that you do run into problems please report an issue and I will look to get it resolved.

If you have any updates or bug fixes please submit them in a pull request and I will get them merged in where appropriate.

## Thanks
 This project builds upon some ideas from [Zach Holmans](https://github.com/holman/dotfiles) and [Ryan Bates](http://github.com/ryanb/dotfiles) dotfile configurations so please check them out for further inspiration.
