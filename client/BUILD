package(default_visibility = ["//visibility:public"])

cc_library(
    name = "simple_lib",
    srcs = ["simple.cc"],
    hdrs = ["simple.h"],
    deps = ["//proto"],
)

cc_binary(
    name = "client",
    srcs = ["main.cc"],
    deps = [":simple_lib"],
)
