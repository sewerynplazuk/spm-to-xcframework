// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Packages",
    dependencies: [
        .package(url: "https://github.com/apple/swift-collections.git", exact: "1.1.0"),
    ]
)
