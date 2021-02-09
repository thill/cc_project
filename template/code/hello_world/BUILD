load("@rules_cc//cc:defs.bzl", "cc_binary")
load("//bazel:cc_opts.bzl", "default_copts", "default_linkopts")

cc_binary(
    name = "hello_world",
    srcs = ["main.cc"],
    copts = default_copts(),
    linkopts = default_linkopts(),
    deps = [
        ":common",
    ],
)

cc_library(
    name = "common",
    srcs = glob(["common/**/*.cc"]),
    hdrs = glob(["common/**/*.h"]),
    visibility = ["//visibility:private"],
    copts = default_copts(),
    deps = [
        "@com_github_gabime_spdlog//:lib",
    ]
)

cc_library(
    name = "tests",
    srcs = glob(["test/**/*.cc"]),
    hdrs = glob(["test/**/*.h"]),
    visibility = ["//visibility:private"],
    copts = default_copts(),
    testonly = True,
    deps = [
        "@com_github_catchorg_catch2//:lib",
    ]
)

cc_test(
    name = "test",
    copts = default_copts(),
    linkopts = default_linkopts(),
    deps = [
        ":tests",
        "@com_github_catchorg_catch2//:main",
    ],
)
