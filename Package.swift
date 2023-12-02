// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Socket",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "Socket",
            targets: ["Socket"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Socket",
            path: "Sources/Socket"
        ),
        .testTarget(
            name: "SocketTests",
            dependencies: ["Socket"],
            path: "Tests/SocketTests"
        ),
    ]
)
