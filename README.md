# Documentation Badge

This app provides GitHub README badges that display the number of open issues in a repo that have the label "documentation". The goal of this is to help maintainers keep an eye on doc rot in their repos.

A badge for a repo is made available at the `/:ower/:repo/badge.svg` path.

## Getting Started

This repo contains 3 major components:

- The code the generate and fetch documentation badges
- A web server to serve generated badges
- A frontend describing the site and for generating markdown to add badges to READMEs

This project has a few dependencies

- [Ruby 2.4.1](https://www.ruby-lang.org/)
- [Bundler](http://bundler.io/)
- [Node.js 6.x.x](https://nodejs.org/)
- [Yarn](https://yarnpkg.com/)
- [qmake](https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit) (for capybara-webpack)

To get the whole thing running, do that folowing:

1. Clone the repo: `git clone git@github.com:jmhooper/documentation_badge.git`
1. Install dependencies with Yarn and Bundler: `bin/setup`
1. Build the frontend assets: `bin/build`
1. Start the app: `bin/start`

The application should be available at `localhost:9292`.

Note that `npm run watch` will run webpack in with the `--watch` which will regenerate frontend files as they are modified.

## Running Tests

The test suites is powered by [rspec](). To run the tests, run the following:

```
bundle exec rspec
```
