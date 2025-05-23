load(
    "//bazel:envoy_build_system.bzl",
    "envoy_cc_test",
    "envoy_cc_test_library",
    "envoy_package",
)

licenses(["notice"])  # Apache 2

envoy_package()

envoy_cc_test(
    name = "aligned_allocator_test",
    srcs = ["aligned_allocator_test.cc"],
    rbe_pool = "6gig",
    deps = ["//source/common/memory:aligned_allocator_lib"],
)

envoy_cc_test(
    name = "debug_test",
    srcs = ["debug_test.cc"],
    rbe_pool = "6gig",
    deps = ["//source/common/memory:stats_lib"],
)

envoy_cc_test(
    name = "memory_release_test",
    srcs = ["memory_release_test.cc"],
    rbe_pool = "6gig",
    deps = [
        "//source/common/event:dispatcher_lib",
        "//source/common/memory:stats_lib",
        "//test/common/stats:stat_test_utility_lib",
        "//test/test_common:simulated_time_system_lib",
        "//test/test_common:utility_lib",
    ],
)

envoy_cc_test(
    name = "heap_shrinker_test",
    srcs = ["heap_shrinker_test.cc"],
    rbe_pool = "6gig",
    deps = [
        "//source/common/event:dispatcher_lib",
        "//source/common/memory:heap_shrinker_lib",
        "//source/common/memory:stats_lib",
        "//test/common/stats:stat_test_utility_lib",
        "//test/mocks/event:event_mocks",
        "//test/mocks/server:overload_manager_mocks",
        "//test/test_common:simulated_time_system_lib",
        "//test/test_common:utility_lib",
    ],
)

envoy_cc_test_library(
    name = "memory_test_utility_lib",
    srcs = ["memory_test_utility.cc"],
    hdrs = ["memory_test_utility.h"],
    deps = ["//source/common/memory:stats_lib"],
)
