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
