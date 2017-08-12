package(default_visibility = ["//visibility:public"])

load("@k8s_deploy//:defaults.bzl", "k8s_deploy")

k8s_deploy(
  name = "dev",
  template = ":deployment.yaml.tpl",
  substitutions = {
      "environment": "{BUILD_USER}",
      "replicas": "1",
  },
  images = {
    "gcr.io/convoy-adapter/bazel-grpc:{BUILD_USER}": "//server"
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
