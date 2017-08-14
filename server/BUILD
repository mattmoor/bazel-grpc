package(default_visibility = ["//visibility:public"])

load("@io_bazel_rules_docker//docker/contrib/cc:image.bzl", "cc_image")

cc_image(
    name = "server",
    srcs = ["main.cc"],
    deps = ["//proto"],
)

load("@k8s_deploy//:defaults.bzl", "k8s_deploy")

k8s_deploy(
  name = "dev",
  template = ":deployment.yaml.tpl",
  substitutions = {
      "environment": "{BUILD_USER}",
      "replicas": "1",
  },
  images = {
    "gcr.io/convoy-adapter/bazel-grpc:{BUILD_USER}": ":server"
  },
)

k8s_deploy(
  name = "prod",
  template = ":deployment.yaml.tpl",
  substitutions = {
      "replicas": "3",
      "environment": "prod",
  },
)
