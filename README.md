# Taku (AnyThink) - iOS Smartdigimkt ADX Mediation Adapter

The Taku (AnyThink) Smartdigimkt ADX mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- Taku (AnyThink) iOS Core SDK (`AnyThinkiOS`) 6.5.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/TakuMediation-packages/AnyThinkMediationAdxSmartdigimktCNAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `6.5.80-2.1`).
4. Add the `AnyThinkMediationAdxSmartdigimktCNAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/TakuMediation-packages/AnyThinkMediationAdxSmartdigimktCNAdapter_SPM.git",
        exact: "6.5.80-2.1"
    )
]
```

## Included dependencies

- [`AnyThinkiOS`](https://github.com/TakuMediation-packages/AnyThinkiOS_SPM) (>= 6.5.0)
- [`SmartdigimktCNSDK`](https://github.com/TakuMediation-packages/SmartdigimktCNSDK_SPM)

## More information

- [Taku (AnyThink) iOS Integration Guide](https://help.takuad.com)
