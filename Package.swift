// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ChisteGrego",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .executable(name: "ChisteGrego", targets: ["ChisteGrego"])
    ],
    targets: [
        .executableTarget(
            name: "ChisteGrego",
            path: "Sources"
        )
    ]
)
