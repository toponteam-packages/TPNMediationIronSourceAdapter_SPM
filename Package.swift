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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkIronSourceAdapter/9.3.0.0.2.1/AnyThinkIronSourceAdapter-9.3.0.0.2.1.zip",
            checksum: "d7a5b6ee2cd056031affb33028b322069df70627ba41a7055aeff989f492f5bd"
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
