// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DNSPageView",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "DNSPageView",
            targets: ["DNSPageView"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Daiuno/CollectionViewPagingLayout.git", branch: "master"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", "6.0.0" ..< "7.0.0"),
    ],
    targets: [
        .target(
            name: "DNSPageView",
            dependencies: [
                "CollectionViewPagingLayout",
                "SnapKit",
            ],
            path: "DNSPageView")
    ],
    swiftLanguageVersions: [.v5]
)
