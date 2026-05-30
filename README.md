# dcap-qvl-swift

Swift Package distribution for [`dcap-qvl`](https://github.com/Phala-Network/dcap-qvl) —
native DCAP (SGX/TDX) quote verification for iOS and macOS.

> This repository is **generated**. Its contents (the `DcapQvlFFI.xcframework`
> reference and the UniFFI-generated `DcapQvl.swift`) are pushed automatically
> by the `ios-release` workflow in the main `dcap-qvl` repo on every `v*` tag.
> Don't edit it by hand — changes belong in
> [`dcap-qvl/dcap-qvl-mobile`](https://github.com/Phala-Network/dcap-qvl/tree/master/dcap-qvl-mobile).

## Install

In your `Package.swift`:

```swift
.package(url: "https://github.com/Phala-Network/dcap-qvl-swift", from: "0.6.0")
```

or in Xcode: **File → Add Package Dependencies…** and paste the URL.

The version numbers here match the unified `dcap-qvl` release version (the same
`X.Y.Z` published to crates.io, npm, and Maven Central).

## Use

```swift
import DcapQvl

let raw = try Data(contentsOf: quoteURL)
let quote = try parseQuote(rawQuote: raw)

// Fetch the PCCS collateral JSON via URLSession and pass the raw bytes in.
let (collateralJson, _) = try await URLSession.shared.data(from: pccsURL)
let report = try verify(
    rawQuote: raw,
    collateralJson: collateralJson,
    nowSecs: UInt64(Date().timeIntervalSince1970)
)
print(report.status, report.advisoryIds)
```

## License

MIT — see [LICENSE](LICENSE).
