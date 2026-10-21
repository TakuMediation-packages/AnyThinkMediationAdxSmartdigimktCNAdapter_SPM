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
        .package(url: "https://gitee.com/zhouhanhao/SmartdigimktCNSDK_SPM.git", exact: "6.5.90")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkSmartdigimktCNAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkSmartdigimktCNAdapter/6.5.90.2.9/AnyThinkSmartdigimktCNAdapter-6.5.90.2.9.zip",
            checksum: "2018e7e878c057e39027ef3a8564a581d0cb33927e7d0b9383a912b016213765"
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
