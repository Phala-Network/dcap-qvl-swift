// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "DcapQvl",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
    ],
    products: [
        .library(name: "DcapQvl", targets: ["DcapQvl"]),
    ],
    targets: [
        .binaryTarget(
            name: "DcapQvlFFI",
            url: "https://github.com/Phala-Network/dcap-qvl/releases/download/v0.5.2/DcapQvlFFI.xcframework.zip",
            checksum: "1903b2c4792a26321fc92f9b54a3c4fc7b3871906242409997fa75c20366fdf2"
        ),
        .target(name: "DcapQvl", dependencies: ["DcapQvlFFI"], path: "Sources/DcapQvl"),
    ]
)
