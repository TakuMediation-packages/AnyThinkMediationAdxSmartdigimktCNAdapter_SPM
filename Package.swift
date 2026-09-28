// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationAdxSmartdigimktCNAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationAdxSmartdigimktCNAdapter",
            targets: ["AnyThinkMediationAdxSmartdigimktCNAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/TakuMediation-packages/SmartdigimktCNSDK_SPM.git", exact: "6.5.80")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkSmartdigimktCNAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkSmartdigimktCNAdapter/6.5.80.2.1/AnyThinkSmartdigimktCNAdapter-6.5.80.2.1.zip",
            checksum: "08402c875503d6ad9c3488d626fd26a99e2938d1e65d0a7d0fbaa5e83cb157a9"
        ),
        .target(
            name: "AnyThinkMediationAdxSmartdigimktCNAdapterTarget",
            dependencies: [
                "AnyThinkSmartdigimktCNAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "SmartdigimktCNSDK", package: "SmartdigimktCNSDK_SPM")
            ],
            path: "Sources/AnyThinkMediationAdxSmartdigimktCNAdapterTarget"
        )
    ]
)
