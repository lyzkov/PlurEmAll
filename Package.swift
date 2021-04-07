// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PlurEmAll",
    products: [
        .library(
            name: "PlurEmAll",
            targets: ["PlurEmAll"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "PlurEmAll",
            dependencies: []),
        .testTarget(
            name: "PlurEmAllTests",
            dependencies: ["PlurEmAll"]),
    ]
)
