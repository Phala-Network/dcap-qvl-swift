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
            url: "https://github.com/Phala-Network/dcap-qvl/releases/download/v0.6.3/DcapQvlFFI.xcframework.zip",
            checksum: "8e45ae819e8f5b609c8c6d697e45e725556a6bb1899e5a46ce72e02c2c56e632"
        ),
        .target(name: "DcapQvl", dependencies: ["DcapQvlFFI"], path: "Sources/DcapQvl"),
    ]
)
