// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CursodeGrego",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .executable(name: "CursodeGrego", targets: ["CursodeGrego"])
    ],
    targets: [
        .executableTarget(
            name: "CursodeGrego",
            path: "Sources"
        )
    ]
)
