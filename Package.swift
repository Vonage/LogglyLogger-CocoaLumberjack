// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LogglyLogger-CocoaLumberjack",
    platforms: [
        .iOS(.v14), // Adjust to your target platforms
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LogglyLogger-CocoaLumberjack",
            targets: ["LogglyLogger-CocoaLumberjack"]),
    ],
    dependencies: [
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", from: "3.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LogglyLogger-CocoaLumberjack",
            dependencies: [
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack"),
            ], 
            path: "LogglyLogger-CocoaLumberjack",
            publicHeadersPath: "include"
        )
    ]
)
