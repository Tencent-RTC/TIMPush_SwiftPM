// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "TIMPush_SwiftPM",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "TIMPush_SwiftPM", targets: ["TIMPush_SwiftPM"])
    ],
    dependencies: [
        .package(url: "https://github.com/Tencent-RTC/Chat_SDK_SwiftPM.git", from: "9.1.7824")
    ],
    targets: [
        .binaryTarget(
            name: "TIMPush",
            url: "https://im.sdk.cloud.tencent.cn/download/tuiplugin/9.1.7824/ios/TIMPush_9.1.7824.xcframework.zip",
            checksum: "6d14d99a93a5a1b14952321fdb4ce3d5e41056b246015d8312dbeb2c211f8777"
        ),
        // binaryTarget 无法声明依赖，TIMPush 动态链接 ImSDK_Plus，
        // 因此通过该 wrapper target 把 IM SDK 一并带给使用方。
        .target(
            name: "TIMPush_SwiftPM",
            dependencies: [
                "TIMPush",
                .product(name: "TXIMSDK_Plus_iOS_XCFramework", package: "Chat_SDK_SwiftPM")
            ]
        )
    ]
)
