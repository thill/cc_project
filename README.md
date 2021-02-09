# cc-template

Generate a new C++ bazel project with `libfmt`, `spdlog`, and `Catch2` dependencies. A VSCode environment is generated that will utilize a Docker container for development.

## OS Compatibility

I target SELinux, but it may also work with Standard Linux, MacOS, and WSL. In the worst-case scenario, `templates/ide/selinux/` files will need to be modified slightly to target VS Code for different environments.

## Dependencies

* Bash
* Docker
* VS Code

## Quick Start

1. Generate Project
```
$ ./gen.sh my_project
$ code ./my_project/ide/selinux/
```
2. Click through VS Code prompts to `Run in Container` and `Install Recommended Extensions`

