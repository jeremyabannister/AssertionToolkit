// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "AssertionToolkit",
    products: [
        .library(
            name: "AssertionToolkit",
            targets: ["AssertionToolkit"]
        ),
        .library(
            name: "AssertionTestToolkit",
            targets: ["AssertionTestToolkit"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/ErrorMessage-package",
            .upToNextMinor(from: "0.1.2")
        ),
        .package(
            url: "https://github.com/jeremyabannister/XCTestToolkit",
            .upToNextMinor(from: "0.2.6")
        ),
    ],
    targets: [
        .target(
            name: "AssertionToolkit",
            dependencies: [
                .product(
                    name: "ErrorMessage-module",
                    package: "ErrorMessage-package"
                ),
            ]
        ),
        .target(
            name: "AssertionTestToolkit",
            dependencies: [
                "AssertionToolkit",
                "XCTestToolkit",
            ]
        ),
        .testTarget(
            name: "AssertionToolkit-tests",
            dependencies: [
                "AssertionToolkit",
                "AssertionTestToolkit",
            ]
        ),
        .testTarget(
            name: "AssertionTestToolkit-tests",
            dependencies: [
                "AssertionTestToolkit",
            ]
        ),
    ]
)
