workspace(name = "bazel_grpc")

# ================================================================
# protobuf rules
# ================================================================

git_repository(
    name = "org_pubref_rules_protobuf",
    commit = "be63ed9cb3140ec23e4df5118fca9a3f98640cf6",
    remote = "https://github.com/pubref/rules_protobuf.git",
)

# ================================================================
# Specific Languages Support
# ================================================================

load("@org_pubref_rules_protobuf//protobuf:rules.bzl", "proto_repositories")

proto_repositories()

load("@org_pubref_rules_protobuf//cpp:rules.bzl", "cpp_proto_repositories")

cpp_proto_repositories()

# ================================================================
# Docker support
# ================================================================

git_repository(
    name = "io_bazel_rules_docker",
    remote = "https://github.com/bazelbuild/rules_docker.git",
    commit = "27b494ceefedd35b0ae72100860997f7ab1bf714",
)

load(
  "@io_bazel_rules_docker//docker:docker.bzl",
  "docker_repositories",
)
docker_repositories()

# We use cc_image to build our sample service
load(
    "@io_bazel_rules_docker//docker/contrib/cc:image.bzl",
    _cc_image_repos = "repositories",
)

_cc_image_repos()

# ================================================================
# Kubernetes support
# ================================================================

git_repository(
    name = "io_bazel_rules_k8s",
    remote = "https://github.com/mattmoor/rules_k8s.git",
    commit = "bc195c7a39fabe041e6930bea6a6c381c3a9d409",
)

load(
  "@io_bazel_rules_k8s//k8s:k8s.bzl",
  "k8s_repositories", "k8s_defaults"
)
k8s_repositories()

# Generate a k8s_deploy alias that takes deployment objects and
# deploys them to the named cluster.
k8s_defaults(
  name = "k8s_deploy",
  kind = "deployment",
  cluster = "gke_convoy-adapter_us-central1-f_bazel-grpc",
)
