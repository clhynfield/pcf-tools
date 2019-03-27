# PCF Tools

## Run

Interactively:

```shell
docker run --interactive --tty --volume .:/workspace pcf-tools:latest
```

As individual command-line utilities:

```shell
alias om="docker run --volume $(pwd):/workspace --rm pcf-tools:latest om"
om apply-changes
```

## Make

make showver		will show the current release tag based on the directory content.

make build		builds a new version of your Docker image and tags it
make snapshot		build from the current (dirty) workspace and pushes the image to the registry
make release		build the current release and push the image to the registry

make patch-release	increments the patch release level, build and push to registry
make minor-release	increments the minor release level, build and push to registry
make major-release	increments the major release level, build and push to registry

make tag-patch-release	increments the patch release level, without build and push to registry
make tag-minor-release	increments the minor release level, without build and push to registry
make tag-major-release	increments the major release level, without build and push to registry

make check-status	will check whether there are outstanding changes
make check-release	will check whether the current directory matches the tagged release in git.
