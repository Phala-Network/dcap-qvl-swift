// swift-tools-version:5.7
import PackageDescription

// NOTE: This is the placeholder manifest for the default branch.
//
// Each `v*` release of Phala-Network/dcap-qvl regenerates this file via
// `.github/workflows/ios-release.yml`, replacing the stub target below with a
// `.binaryTarget(url:checksum:)` pointing at that release's
// `DcapQvlFFI.xcframework.zip`, and tags the satellite with the matching
// semver. Resolve the package by version, not by branch:
//
//     .package(url: "https://github.com/Phala-Network/dcap-qvl-swift", from: "0.6.0")

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
        .target(name: "DcapQvl", path: "Sources/DcapQvl"),
    ]
)
