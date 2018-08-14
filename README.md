# ~BenBarber's Dot Files

These are my config files for setting up a MacOS/Linux system for the way I like to work.

As I work across multiple machines I needed a way to make my development experience
consistent and reproducible across them all. By managing my configuration through this
git repository I can simply pull in any changes and run the installer to bring everything
up to date.

The dotfiles are managed with [YADM](https://thelocehiliosan.github.io/yadm/) which is a
wrapper around the git commands you already know and use.

## Installation

To get started simply run the bootstrap script with with a curl command.

```
curl -L https://raw.githubusercontent.com/BenBarber/dotfiles/master/bootstrap | bash
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
