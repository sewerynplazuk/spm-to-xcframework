# Description
Example of how to use [rules_swift_package_manager](https://github.com/cgrindel/rules_swift_package_manager) and Bazel to create an XCFramework for internal distribution from SPM package.

## Issues
In the latest [rules_swift_package_manager](https://github.com/cgrindel/rules_swift_package_manager) release - 0.28.0 - the underlying targets declared by the packages were hidden. Making it impossible to make XCFrameworks for packages depending on internal targets. See [Why is it so damn difficult to create a binary framework for your Swift Package](https://blog.eidinger.info/why-is-it-so-damn-difficult-to-create-a-binary-framework-for-your-swift-package) for the context.


#### Repro
In this example we want to distribute [DequeModule](https://github.com/apple/swift-collections/blob/main/Package.swift#L221) from [apple/swift-collections](https://github.com/apple/swift-collections) as an XCFramework. Unfortunatelly, the target relies on internal [_CollectionsUtilities](https://github.com/apple/swift-collections/blob/main/Package.swift#L186C1-L207C7).

Running `bazelisk build DequeModule-xcframework --@build_bazel_rules_apple//apple/build_settings:use_library_evolution=False` fails with error:
```
in apple_static_xcframework rule //:DequeModule-xcframework: target '@@swiftpkg_swift_collections//:_CollectionsUtilities.rspm' is not visible from target '//:DequeModule-xcframework'. Check the visibility declaration of the former target if you think the dependency is legitimate
```
