// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Device",
    products: [
        .library(
            name: "Device",
            targets: ["Device"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Device",
            dependencies: []),
        .testTarget(
            name: "DeviceTests",
            dependencies: ["Device"]),
    ]
)
