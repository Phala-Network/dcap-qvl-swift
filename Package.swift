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
            url: "https://github.com/Phala-Network/dcap-qvl/releases/download/v0.6.6/DcapQvlFFI.xcframework.zip",
            checksum: "083f8f40e9dc4114b2bb31e1356d3b5f85480b24c2aed515b6da21f123558ba6"
        ),
        .target(name: "DcapQvl", dependencies: ["DcapQvlFFI"], path: "Sources/DcapQvl"),
    ]
)
