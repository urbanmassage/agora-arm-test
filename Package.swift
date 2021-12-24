// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "agora-arm-test",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "agora-arm-test",
            targets: ["agora-arm-test"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS", .upToNextMajor(from: "3.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "agora-arm-test",
            dependencies: [
              .product(name: "AgoraRtcKit", package: "AgoraRtcEngine_iOS"),            
            ]),
        .testTarget(
            name: "agora-arm-testTests",
            dependencies: [
              "agora-arm-test",
              .product(name: "AgoraRtcKit", package: "AgoraRtcEngine_iOS"),
            ]),
    ]
)
