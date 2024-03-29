workspace(name = "spm-to-xcframework")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

http_archive(
    name = "rules_swift_package_manager",
    sha256 = "eef16c8a5f9fa6102049f762823e773601a44398baf2a5de7ef7cbebcb888870",
    urls = [
        "https://github.com/cgrindel/rules_swift_package_manager/releases/download/v0.28.0/rules_swift_package_manager.v0.28.0.tar.gz",
    ],
)

load("@rules_swift_package_manager//:deps.bzl", "swift_bazel_dependencies")

swift_bazel_dependencies()

load("@cgrindel_bazel_starlib//:deps.bzl", "bazel_starlib_dependencies")

bazel_starlib_dependencies()

# MARK: - Gazelle

# gazelle:repo bazel_gazelle

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")
load("@rules_swift_package_manager//:go_deps.bzl", "swift_bazel_go_dependencies")
load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

# Declare Go dependencies before calling go_rules_dependencies.
swift_bazel_go_dependencies()

go_rules_dependencies()

go_register_toolchains(version = "1.21.1")

gazelle_dependencies()

# MARK: - Swift Toolchain

http_archive(
    name = "build_bazel_rules_swift",
    sha256 = "7aabe3bbef8d2e07c9ee07acb386f0a257bd2f76ea8e21005688b506dc8da67b",
    url = "https://github.com/bazelbuild/rules_swift/releases/download/1.16.0/rules_swift.1.16.0.tar.gz",
)

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)
load("//:swift_deps.bzl", "swift_dependencies")

# gazelle:repository_macro swift_deps.bzl%swift_dependencies
swift_dependencies()

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

# See https://github.com/bazelbuild/rules_apple/pull/2401
git_repository(
    name = "build_bazel_rules_apple",
    commit = "d7358b3231c06193a013b57fab2d8332dfd0096b",
    remote = "https://github.com/sewerynplazuk/rules_apple.git",
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies(ignore_version_differences = True)

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()
