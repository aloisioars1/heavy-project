// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "HeavyProApp",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .executable(name: "HeavyProApp", targets: ["HeavyProApp"])
    ],
    targets: [
        .executableTarget(
            name: "HeavyProApp",
            path: "Sources"
        )
    ]
)
