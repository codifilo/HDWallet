// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "HDWallet",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "HDWallet",
            targets: ["HDWallet"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift",
                 .upToNextMajor(from: "1.4.1")),
        .package(url: "https://github.com/Boilertalk/secp256k1.swift.git", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "HDWallet",
            dependencies: [
                "CryptoSwift",
                .product(name: "secp256k1" , package: "secp256k1.swift")
            ]
        ),
        .testTarget(
            name: "HDWalletTests",
            dependencies: ["HDWallet"]),
    ]
)
