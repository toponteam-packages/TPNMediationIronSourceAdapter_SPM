# TopOn - iOS Unity LevelPlay (ironSource) Mediation Adapter

The TopOn Unity LevelPlay (ironSource) mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 16.0+
- TopOn iOS Core SDK (`TPNiOS`) 6.5.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/toponteam-packages/TPNMediationIronSourceAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `90300.2.1`).
4. Add the `TPNMediationIronSourceAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/toponteam-packages/TPNMediationIronSourceAdapter_SPM.git",
        exact: "90300.2.1"
    )
]
```

## Included dependencies

- [`TPNiOS`](https://github.com/toponteam-packages/TPNiOS_SPM) (>= 6.5.0)
- [`IronSourceSDK`](https://github.com/ironsource-mobile/LevelPlay-Swift-Package) (pinned to the version certified for this adapter release)

## More information

- [TopOn iOS Integration Guide](https://docs.toponad.com)
