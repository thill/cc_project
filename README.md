# cc-project

Generate a new C++ bazel project with `libfmt`, `spdlog`, and `Catch2` dependencies. A VSCode environment is generated that will utilize a Docker container for development.

## OS Compatibility

VS Code configurations get generated for multiple platforms. At the moment, `ide/selinux-amd64` and `ide/linux-amd64` will be generated. It is currently untested, but `ide/linux-amd64` should also work on MacOS and WSL.

## Dependencies

* Bash
* Docker
* VS Code

## Quick Start

1. Generate Project
```
$ ./gen.sh my_project
$ cd my_project
$ code ide/selinux-amd64/
```
2. Click through VS Code prompts to `Run in Container` and `Install Recommended Extensions`

