package(default_visibility = ["//visibility:public"])

load(
    "@io_bazel_rules_docker//docker:docker.bzl",
    "docker_build",
    "docker_push",
)

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
    base = "@cc_base//image",
    files = [":server"],
    entrypoint = ["/server"],
    ports = ["50051"],
)

docker_push(
    name = "push",
    image = ":image",
    registry = "gcr.io",
    repository = "convoy-adapter/bazel-grpc",
    tag = "{BUILD_USER}",
    stamp = True,
)
