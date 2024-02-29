// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "iOSMcuManagerLibrary",
    platforms: [.iOS(.v9), .macOS(.v10_13)],
    products: [
        .library(
            name: "iOSMcuManagerLibrary",
            targets: ["iOSMcuManagerLibrary"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/MoonboonInternationalApS/SwiftCBOR.git",
            .exact("0.4.7")
        ),
    ],
    targets: [
        .target(
            name: "iOSMcuManagerLibrary",
            dependencies: ["SwiftCBOR"],
            path: "Source",
            exclude:["Info.plist"]
        )
    ]
)
