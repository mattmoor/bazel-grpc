package(default_visibility = ["//visibility:public"])

load("@io_bazel_rules_docker//docker/contrib/cc:image.bzl", "cc_image")

cc_image(
    name = "server",
    srcs = ["main.cc"],
    deps = ["//proto"],
)
