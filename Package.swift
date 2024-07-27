// swift-tools-version: 5.10

///
import PackageDescription


///
let package = Package(
    name: "AssertionToolkit",
    products: [
        
        ///
        .library(
            name: "AssertionToolkit",
            targets: ["AssertionToolkit"]
        ),
        
        ///
        .library(
            name: "AssertionTestToolkit",
            targets: ["AssertionTestToolkit"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/ErrorMessage-package",
            "0.1.0" ..< "0.2.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/XCTestToolkit",
            "0.2.4" ..< "0.3.0"
        ),
    ],
    targets: [
        
        ///
        .target(
            name: "AssertionToolkit",
            dependencies: [
                
                ///
                .product(
                    name: "ErrorMessage-module",
                    package: "ErrorMessage-package"
                ),
            ]
        ),
        
        ///
        .target(
            name: "AssertionTestToolkit",
            dependencies: [
                "AssertionToolkit",
                "XCTestToolkit",
            ]
        ),
        
        ///
        .testTarget(
            name: "AssertionToolkit-tests",
            dependencies: [
                "AssertionToolkit",
                "AssertionTestToolkit",
            ]
        ),
        
        ///
        .testTarget(
            name: "AssertionTestToolkit-tests",
            dependencies: [
                "AssertionTestToolkit",
            ]
        ),
    ]
)
