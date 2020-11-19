<div align="center">
  <h1>You Should Use</h1>
  <img src="https://github.com/paysonwallach/fish-you-should-use/blob/master/media/screenshot.png" />
  <br>
  <br>
  <p>A fish plugin that reminds you to use your aliases.</p>
  <a href="https://github.com/paysonwallach/fish-you-should-use/releases/latest">
    <img alt="Version 1.1.0" src="https://img.shields.io/badge/version-1.1.0-red.svg?cacheSeconds=2592000&style=flat-square" />
  </a>
  <a href="https://github.com/paysonwallach/fish-you-should-use/blob/master/LICENSE" target="\_blank">
    <img alt="Licensed under the GNU General Public License v3.0" src="https://img.shields.io/github/license/paysonwallach/fish-you-should-use?style=flat-square" />
  <a href=https://buymeacoffee.com/paysonwallach>
    <img src=https://img.shields.io/badge/donate-Buy%20me%20a%20coffe-yellow?style=flat-square>
  </a>
  <br>
  <br>
</div>

[You Should Use](git+https://github.com/paysonwallach/fish-you-should-use.git) is a rewrite of [You Should Use](https://github.com/MichaelAquilina/zsh-you-should-use) for [fish](https://fishshell.com/).

## Installation

Using [`fisher`](https://github.com/jorgebucaran/fisher):

```shell
fisher install paysonwallach/fish-you-should-use
```

## Usage

Simply install and get back to whatever you were doing before! [You Should Use](git+https://github.com/paysonwallach/fish-you-should-use.git) will let you know when you've typed out a command that exists as an alias.

## Configuration

By default, [You Should Use](git+https://github.com/paysonwallach/fish-you-should-use.git) will display its reminder message after a command has executed. However, you can choose to display the mesasge before execution by setting `YSU__MESSAGE_POSITION` like so:

```fish
set YSU__MESSAGE_POSITION "before"
```

## Contributing

Feel free to take a look at [TODO.md](https://github.com/paysonwallach/fish-you-should-use/blob/master/TODO.md), otherwise pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

## License

[You Should Use](git+https://github.com/paysonwallach/fish-you-should-use.git) is licensed under the [GNU General Public License v3.0](https://github.com/paysonwallach/fish-you-should-use/blob/master/LICENSE).
