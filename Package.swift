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
            url: "https://github.com/Phala-Network/dcap-qvl/releases/download/v0.6.1/DcapQvlFFI.xcframework.zip",
            checksum: "35e1c166a8567850c67d1175e6993d80237b8323e367df45ae39763657b6886e"
        ),
        .target(name: "DcapQvl", dependencies: ["DcapQvlFFI"], path: "Sources/DcapQvl"),
    ]
)
