package(default_visibility = ["//visibility:public"])

load("@bazel_tools//tools/build_defs/docker:docker.bzl", "docker_build")

# cc_library(
#     name = "simple_lib",
#     srcs = ["simple.cc],
#     hdrs = ["simple.h"],
#     deps = ["//proto"],
# )

cc_binary(
    name = "server",
    srcs = ["main.cc"],
    deps = ["//proto"],
    # Make the binary completely statically linked.
    # linkopts = ["-static"],
)

docker_build(
    name = "image",
    base = "@cc_base//image:image.tar",
    files = [":server"],
    entrypoint = ["/server"],
    ports = ["50051"],
)
