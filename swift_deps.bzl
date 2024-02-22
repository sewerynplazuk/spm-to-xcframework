load("@rules_swift_package_manager//swiftpkg:defs.bzl", "swift_package")

def swift_dependencies():
    # version: 1.21.1
    swift_package(
        name = "swiftpkg_grpc_swift",
        commit = "5d0cf1c7b2e641e3a8961089e7e4672f4fe8abac",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/grpc/grpc-swift.git",
    )

    # version: 1.3.0
    swift_package(
        name = "swiftpkg_swift_argument_parser",
        commit = "c8ed701b513cf5177118a175d85fbbbcd707ab41",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-argument-parser.git",
    )

    # version: 1.2.0
    swift_package(
        name = "swiftpkg_swift_atomics",
        commit = "cd142fd2f64be2100422d658e7411e39489da985",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-atomics.git",
    )

    # version: 1.1.0
    swift_package(
        name = "swiftpkg_swift_collections",
        commit = "94cf62b3ba8d4bed62680a282d4c25f9c63c2efb",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-collections.git",
    )

    # version: 1.1.0
    swift_package(
        name = "swiftpkg_swift_distributed_tracing",
        commit = "7fbb8b23b77ee548b3d0686b6faf735c1b3c7cb8",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-distributed-tracing.git",
    )

    # version: 1.3.0
    swift_package(
        name = "swiftpkg_swift_docc_plugin",
        commit = "26ac5758409154cc448d7ab82389c520fa8a8247",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-docc-plugin",
    )

    # version: 1.0.0
    swift_package(
        name = "swiftpkg_swift_docc_symbolkit",
        commit = "b45d1f2ed151d057b54504d653e0da5552844e34",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-docc-symbolkit",
    )

    # version: 1.0.3
    swift_package(
        name = "swiftpkg_swift_http_types",
        commit = "12358d55a3824bd5fed310b999ea8cf83a9a1a65",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-http-types",
    )

    # version: 1.5.4
    swift_package(
        name = "swiftpkg_swift_log",
        commit = "e97a6fcb1ab07462881ac165fdbb37f067e205d5",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-log.git",
    )

    # version: 2.63.0
    swift_package(
        name = "swiftpkg_swift_nio",
        commit = "635b2589494c97e48c62514bc8b37ced762e0a62",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio.git",
    )

    # version: 1.21.0
    swift_package(
        name = "swiftpkg_swift_nio_extras",
        commit = "363da63c1966405764f380c627409b2f9d9e710b",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio-extras.git",
    )

    # version: 1.30.0
    swift_package(
        name = "swiftpkg_swift_nio_http2",
        commit = "0904bf0feb5122b7e5c3f15db7df0eabe623dd87",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio-http2.git",
    )

    # version: 2.26.0
    swift_package(
        name = "swiftpkg_swift_nio_ssl",
        commit = "7c381eb6083542b124a6c18fae742f55001dc2b5",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio-ssl.git",
    )

    # version: 1.20.1
    swift_package(
        name = "swiftpkg_swift_nio_transport_services",
        commit = "6cbe0ed2b394f21ab0d46b9f0c50c6be964968ce",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio-transport-services.git",
    )

    # version: 1.25.2
    swift_package(
        name = "swiftpkg_swift_protobuf",
        commit = "65e8f29b2d63c4e38e736b25c27b83e012159be8",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-protobuf.git",
    )

    # version: 1.0.0
    swift_package(
        name = "swiftpkg_swift_service_context",
        commit = "ce0141c8f123132dbd02fd45fea448018762df1b",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-service-context.git",
    )

    # version: 1.2.1
    swift_package(
        name = "swiftpkg_swift_system",
        commit = "025bcb1165deab2e20d4eaba79967ce73013f496",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-system.git",
    )
