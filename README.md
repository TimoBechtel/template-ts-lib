<h1 align="center">
🧩
<br/>
v__PROJECT_NAME
</h1>
<h3 align="center">v__PROJECT_DESCRIPTION</h3>
<p align="center">
  <a href="#" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
</p>
<p align="center">
  ·
  <a href="https://github.com/v__GITHUB_USER/v__PROJECT_NAME/issues">Report Bug / Request Feature</a>
  ·
</p>

## Table of Contents

- [About](#about)
- [Installation](#install)
- [Usage](#usage)
- [Development / Contributing](#Development-Contributing)

## About

This template is an opinionated boilerplate for typescript libraries.

## TL;DR

```sh
pnpm dlx degit TimoBechtel/template-js-lib && ./init-scripts/init.sh
```

## Install

There are multiple ways to use this template:

- use the Github template feature
- use [degit](https://github.com/Rich-Harris/degit)

  ```sh
  pnpm dlx degit TimoBechtel/template-js-lib
  ```

## Usage

1. Search for variables starting with `v__` to edit the most important variables. (e.g. `v__PROJECT_NAME`) or simply run `./init-scripts/init.sh` for an interactive setup.
2. Enable github workflows, if needed, by renaming the `disabled.github/workflows/` folder to `.github/workflows/`
3. Create an npm token and add it to the github project settings, if you want to publish to npm.

## Package format / Browser support

### Format

This package is compiled to support both CommonJS and ES modules.

### Transpilation / Browser support

This package is not transpiled to support older browsers. This reduces the package size and performance and allows the consumer to choose the transpilation target.
If you need to support older browsers, you can configure your bundler to transpile this package.

Example when using Next.js ([docs](https://nextjs.org/docs/advanced-features/compiler#module-transpilation))

```js
module.exports = {
	transpilePackages: ['v__PROJECT_NAME'],
};
```

## Development / Contributing

### Run tests

```sh
pnpm test
```

### Commit messages

This project uses semantic-release for automated release versions. So commits in this project follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0-beta.2/) guidelines. I recommend using [commitizen](https://github.com/commitizen/cz-cli) for automated commit messages.
