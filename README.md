# Eidolon
[![Build Status](https://travis-ci.org/sesvxace/eidolon.svg?branch=master)][travis]
[![Coverage Status](https://coveralls.io/repos/sesvxace/eidolon/badge.png?branch=master)][coverage]

1. _noun: an idealized person or thing._
2. _noun: a phantom._

## Summary
In short, Eidolon provides the minimal scaffolding required to load data from the RPG Maker series into a pure, external Ruby installation independent of the chosen Ruby implementation (MRI, JRuby, or Rubinius) or the user's operating system.

**Note:** Eidolon is only concerned with the _loading_ of RGSSx data -- it is _not_ built for the purposes of external manipulation and serialization of it.

## Installation
Eidolon is currently in pre-release, and as such is only available from [its GitHub source repository][eidolon] at the moment. Official installation instructions will become available once the project has reached a stable version.

For the time being, if you are interested in development or simply wish to use the current pre-release version, simply clone [the GitHub repository][eidolon] and install the development dependencies with Bundler:

```sh
$ git clone git@github.com:sesvxace/eidolon.git
$ gem install bundler
$ cd eidolon/ && bundle
```

## License
Eidolon is made available under the terms of the MIT Expat license. See the included LICENSE file for more information.

[coverage]: https://coveralls.io/r/sesvxace/eidolon?branch=master
[eidolon]:  https://github.com/sesvxace/eidolon
[travis]:   https://travis-ci.org/sesvxace/eidolon