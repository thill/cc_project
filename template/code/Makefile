t ?= //...
c ?= dbg

.PHONY: clean
clean:
	bazel clean

.PHONY: build
build:
	bazel build -c $(c) $(t)

.PHONY: test
test:
	bazel test -c $(c) $(t)

.PHONY: run
run:
	bazel run -c $(c) $(t)

