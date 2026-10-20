// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationIronSourceAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationIronSourceAdapter",
            targets: ["TPNMediationIronSourceAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package.git", exact: "9.3.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkIronSourceAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkIronSourceAdapter/9.3.0.0.2.9/AnyThinkIronSourceAdapter-9.3.0.0.2.9.zip",
            checksum: "0e1a1e412e46d8baa899a87df093a93743abc011723a350f095dd56f1bc9d9b3"
        ),
        .target(
            name: "TPNMediationIronSourceAdapterTarget",
            dependencies: [
                "AnyThinkIronSourceAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package")
            ],
            path: "Sources/TPNMediationIronSourceAdapterTarget"
        )
    ]
)
