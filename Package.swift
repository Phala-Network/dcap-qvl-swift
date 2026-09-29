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
            url: "https://github.com/Phala-Network/dcap-qvl/releases/download/v0.6.4/DcapQvlFFI.xcframework.zip",
            checksum: "dd8f87925d2168c14e4baea9346e6cf985327dbaaa1af356d05a5ed959c5f40b"
        ),
        .target(name: "DcapQvl", dependencies: ["DcapQvlFFI"], path: "Sources/DcapQvl"),
    ]
)
