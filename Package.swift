// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Calcbot",
    dependencies: [
        .package(url: "https://github.com/Azoy/Sword", .branch("master"))
    ],
    targets: [
        .target(
            name: "Calcbot",
            dependencies: ["Sword"]),
    ]
)
