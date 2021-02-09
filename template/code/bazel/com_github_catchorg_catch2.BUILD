load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "lib",
    hdrs = ["single_include/catch2/catch.hpp"],
    includes = ["single_include/"],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "main",
    srcs = ["src/catch_with_main.cpp"],
    visibility = ["//visibility:public"],
    deps = [":lib"],
)

