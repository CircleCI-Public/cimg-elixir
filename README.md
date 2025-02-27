<div align="center">
	<p>
		<img alt="CircleCI Logo" src="https://raw.github.com/CircleCI-Public/cimg-elixir/master/img/circle-circleci.svg?sanitize=true" width="75" />
		<img alt="Docker Logo" src="https://raw.github.com/CircleCI-Public/cimg-elixir/master/img/circle-docker.svg?sanitize=true" width="75" />
		<img alt="Elixir Logo" src="https://raw.github.com/CircleCI-Public/cimg-elixir/master/img/circle-elixir.svg?sanitize=true" width="75" />
	</p>
	<h1>CircleCI Convenience Images => Elixir</h1>
	<h3>A Continous Integration focused Elixir Docker image built to run on CircleCI</h3>
</div>

[![CircleCI Build Status](https://circleci.com/gh/CircleCI-Public/cimg-elixir.svg?style=shield)](https://circleci.com/gh/CircleCI-Public/cimg-elixir) [![Software License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/CircleCI-Public/cimg-elixir/master/LICENSE) [![Docker Pulls](https://img.shields.io/docker/pulls/cimg/elixir)](https://hub.docker.com/r/cimg/elixir) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/circleci-images) [![Repository](https://img.shields.io/badge/github-README-brightgreen)](https://github.com/CircleCI-Public/cimg-elixir)

***This image is designed to supercede the legacy CircleCI Elixir image, `circleci/elixir`.***

`cimg/elixir` is a Docker image created by CircleCI with continuous integration builds in mind.
Each tag contains a complete Elixir installation for use with mix and hex.

## Support Policy

The CircleCI Docker Convenience Image support policy can be found on the [CircleCI docs](https://circleci.com/docs/convenience-images-support-policy) site. This policy outlines the release, update, and deprecation policy for CircleCI Docker Convenience Images.

## Table of Contents

- [Getting Started](#getting-started)
- [How This Image Works](#how-this-image-works)
- [Development](#development)
- [Contributing](#contributing)
- [Additional Resources](#additional-resources)
- [License](#license)

## Getting Started

This image can be used with the CircleCI `docker` executor.
For example:

```yaml
jobs:
  build:
    docker:
      - image: cimg/elixir:1.9
    steps:
      - checkout
      - run: mix --version
      - run: mix deps.get
      - run: mix test
```

In the above example, the CircleCI Elixir Docker image is used as the primary container.
More specifically, the tag `1.9` is used meaning the version of elixir will be v1.9.
You can now use `mix` within the steps for this job.


## How This Image Works

This image contains both Elixir as well as a supported version of Erlang.

### Parent Tags and Parent Slugs

Parent Tags introduce the ability to choose a specific version to include in the tag. In conjunction with
the Parent Slug, Elixir now supports choosing which Erlang version to use and looks like: `parentSlug-parentTag`, which would translate to `erlang-22.3` 

### Variants

Variant images typically contain the same base software, but with a few additional modifications.

#### Node.js

The Node.js variant is the same Elixir image but with Node.js also installed.
The Node.js variant can be used by appending `-node` to the end of an existing `cimg/elixir` tag.

```yaml
jobs:
  build:
    docker:
      - image: cimg/elixir:1.11-node
    steps:
      - checkout
      - run: mix --version
      - run: node --version
```

#### Browsers

The browsers variant is the same Elixir image but with Node.js, Selenium, and browser dependencies pre-installed via apt.
The browsers variant can be used by appending `-browsers` to the end of an existing `cimg/elixir` tag.
The browsers variant is designed to work in conjunction with the [CircleCI Browser Tools orb](https://circleci.com/developer/orbs/orb/circleci/browser-tools).
You can use the orb to install a version of Google Chrome and/or Firefox into your build. The image contains all of the supporting tools needed to use both the browser and its driver.

```yaml
orbs:
  browser-tools: circleci/browser-tools@1.1
jobs:
  build:
    docker:
      - image: cimg/elixir:1.11-browsers
    steps:
      - browser-tools/install-browser-tools
      - checkout
      - run: |
          mix --version
          node --version
          java --version
          google-chrome --version
```

### Tagging Scheme

This image has the following tagging scheme:

```
cimg/elixir:<elixir-version>[-erlang-version][-variant]
```

`<elixir-version>` - The version of Elixir to use.
This can be a full SemVer point release (such as `1.10.2`) or just the minor release (such as `1.10`).
If you use the minor release tag, it will automatically point to future patch updates as they are released by the Elixir project.
For example, the tag `1.10` points to elixir 1.10.2 now, but when the next release comes out, it will point to 1.10.3.

`<erlang-version>` - This specifies the erlang version to use in accordance with the [compatibility chart](https://hexdocs.pm/elixir/1.13.4/compatibility-and-deprecations.html). Note: the default image tag:
`cimg/elixir:<elixir-version>[-variant]` will utilize the latest version e.g 24.3


`[-variant]` - Variant tags, if available, can optionally be used.
For example, the Node.js variant can be used like this: `cimg/elixir:1.10.1-node`.

## Development

Images can be built and run locally with this repository.
This has the following requirements:

- local machine of Linux (Ubuntu tested) or macOS
- modern version of Bash (v4+)
- modern version of Docker Engine (v19.03+)

### Cloning For Community Users (no write access to this repository)

Fork this repository on GitHub.
When you get your clone URL, you'll want to add `--recurse-submodules` to the clone command in order to populate the Git submodule contained in this repo.
It would look something like this:

```bash
git clone --recurse-submodules <my-clone-url>
```

If you missed this step and already cloned, you can just run `git submodule update --recursive` to populate the submodule.
Then you can optionally add this repo as an upstream to your own:

```bash
git remote add upstream https://github.com/CircleCI-Public/cimg-elixir.git
```

### Cloning For Maintainers ( you have write access to this repository)

Clone the project with the following command so that you populate the submodule:

```bash
git clone --recurse-submodules git@github.com:CircleCI-Public/cimg-elixir.git
```

### Generating Dockerfiles

Dockerfiles can be generated for a specific elixir version using the `gen-dockerfiles.sh` script.
For example, to generate the Dockerfile for elixir v1.10.2, you would run the following from the root of the repo:

```bash
./shared/gen-dockerfiles.sh 1.10.2
```

The generated Dockerfile will be located at `./1.10/<parent-tag>/Dockefile` in addition to their corresponding variants located at `./1.10/<parent-tag>/<variant>/Dockefile`

To build this image locally and try it out, you can run the following (assuming a 23.3 erlang version):

```bash
cd 1.10
docker build -t test/elixir:1.10.2-erlang-23.3 .
docker run -it test/elixir:1.10.2-erlang-23.3 bash
```
If using the default version (latest), you could run either of the following:
```bash
docker build -t test/elixir:1.10.2 .
docker run -it test/elixir:1.10.2 bash

docker build -t test/elixir:1.10.2-erlang-24.3 .
docker run -it test/elixir:1.10.2-erlang-24.3 bash
```

## Elixir Feed

Each execution of this script will update the required Dockerfile to the next version, and will generate a build-images.sh and push-images.sh script to build and push these Dockerfiles.
These scripts will build and push a tag for each version from the one in the Dockerfile, to the latest, so in case the current one is no the latest, wrong images will be created for versions that are not the current, this can be solved running the feed again, which will update the Dockerfile to the next version, and will delete the previous tag from the build and push scripts. Doing this as many times as new versions are, will guarantee all tags have the proper version installed. If you stop running the script previous to get to the latest version, the newer versions will have installed the version where you stopped.

### Building the Dockerfiles

To build the Docker images locally as this repository does, you'll want to run the `build-images.sh` script:

```bash
./build-images.sh
```

This would need to be run after generating the Dockerfiles first.
When releasing proper images for CircleCI, this script is run from a CircleCI pipeline and not locally.


### Submitting a Pull Request

Ensure all the changes to the versioned Dockerfiles and the `build-images.sh` have been reverted, leaving only the `Dockerfile.template` as the modified file. These will have been modified while testing with the sections above.
The specific versions will be included when the images are released.

### Publishing Official Images (for Maintainers only)

The individual scripts (above) can be used to create the correct files for an image, and then added to a new git branch, committed, etc.
A release script is included to make this process easier.
To make a proper release for this image, let's use the fake elixir version of v99.9.9, you would run the following from the repo root:

```bash
./shared/release.sh 99.9.9
```

This will automatically create a new Git branch, generate the Dockerfile(s), stage the changes, commit them, and push them to GitHub.
The commit message will end with the string `[release]`.
This string is used by CircleCI to know when to push images to Docker Hub. When `[release]` is not part of the commit message, it won't publish anything.
All that would need to be done after that is:

- wait for build to pass on CircleCI
- review the PR
- merge the PR

The master branch build will then publish a release.

### Incorporating Changes

How changes are incorporated into this image depends on where they come from.

**build scripts** - Changes within the `./shared` submodule happen in its [own repository](https://github.com/CircleCI-Public/cimg-shared).
For those changes to affect this image, the submodule needs to be updated.
Typically like this:

```bash
cd shared
git pull
cd ..
git add shared
git commit -m "Updating submodule for foo."
```

**parent image** - By design, when changes happen to a parent image, they don't appear in existing elixir images.
This is to aid in "determinism" and prevent breaking customer builds.
New elixir images will automatically pick up the changes.

If you *really* want to publish changes from a parent image into the elixir image, you have to build a specific image version as if it was a new image.
This will create a new Dockerfile and once published, a new image.

**elixir specific changes** - Editing the `Dockerfile.template` file in this repo is how to modify the elixir image specifically.
Don't forget that to see any of these changes locally, the `gen-dockerfiles.sh` script will need to be run again (see above).


## Contributing

We encourage [issues](https://github.com/CircleCI-Public/cimg-elixir/issues) and [pull requests](https://github.com/CircleCI-Public/cimg-elixir/pulls) against this repository.

Please check out our [contributing guide](.github/CONTRIBUTING.md) which outlines best practices for contributions and what you can expect from the images team at CircleCI.

## Additional Resources

[CircleCI Docs](https://circleci.com/docs/) - The official CircleCI Documentation website.
[CircleCI Configuration Reference](https://circleci.com/docs/2.0/configuration-reference/#section=configuration) - From CircleCI Docs, the configuration reference page is one of the most useful pages we have.
It will list all of the keys and values supported in `.circleci/config.yml`.
[Docker Docs](https://docs.docker.com/) - For simple projects this won't be needed but if you want to dive deeper into learning Docker, this is a great resource.


## License

This repository is licensed under the MIT license.
The license can be found [here](./LICENSE).
