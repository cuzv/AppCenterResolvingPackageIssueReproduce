// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppCenterResolvingPackageIssueReproduce",
    products: [
        .library(
            name: "AppCenterResolvingPackageIssueReproduce",
            targets: ["AppCenterResolvingPackageIssueReproduce"]),
    ],
    dependencies: [
        .package(url: "https://github.com/microsoft/appcenter-sdk-apple", .upToNextMajor(from: "4.1.1")),
    ],
    targets: [
        .target(
            name: "AppCenterResolvingPackageIssueReproduce",
            dependencies: [
                .product(name: "AppCenterAnalytics", package: "AppCenter"),
                .product(name: "AppCenterCrashes", package: "AppCenter"),
            ]),
        .testTarget(
            name: "AppCenterResolvingPackageIssueReproduceTests",
            dependencies: ["AppCenterResolvingPackageIssueReproduce"]),
    ]
)
