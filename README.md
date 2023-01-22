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

This template is an opinionated boilerplate for javascript libraries.

## Install

There are multiple ways to use this template:

- use the Github template feature
- use [degit](https://github.com/Rich-Harris/degit)

  ```sh
  npx degit TimoBechtel/template-js-lib
  ```

## Usage

1. Search for variables starting with `v__` to edit the most important variables. (e.g. `v__PROJECT_NAME`)
2. Enable github workflows, if needed, by renaming the `disabled.github/workflows/` folder to `.github/workflows/`
3. Create an npm token and add it to the github project settings, if you want to publish to npm.

## Development / Contributing

### Run tests

```sh
pnpm test
```

### Commit messages

This project uses semantic-release for automated release versions. So commits in this project follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0-beta.2/) guidelines. I recommend using [commitizen](https://github.com/commitizen/cz-cli) for automated commit messages.
