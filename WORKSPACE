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
    remote = "https://github.com/mattmoor/rules_docker.git",
    commit = "5ee8f1b66309d6c59762900cf0b8b1b88224ecaf",
)

load(
  "@io_bazel_rules_docker//docker:docker.bzl",
  "docker_repositories", "docker_pull"
)
docker_repositories()

docker_pull(
  name = "cc_base",
  registry = "gcr.io",
  repository = "distroless/cc",
  tag = "latest",
)

# ================================================================
# Kubernetes support
# ================================================================

git_repository(
    name = "io_bazel_rules_k8s",
    remote = "https://github.com/mattmoor/rules_k8s.git",
    commit = "b15a9492c5fda2eb16b96bb22a7d313565e14fba",
)

load(
  "@io_bazel_rules_k8s//k8s:k8s.bzl",
  "k8s_repositories",
)
k8s_repositories()