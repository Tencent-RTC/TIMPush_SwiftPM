# TIMPush

[English](README.md) | 简体中文

腾讯云即时通信 IM 离线推送插件 TIMPush 的 Swift Package Manager 分发仓库。

## 要求

- iOS 14.0+
- 自动依赖 [Chat_SDK_SwiftPM](https://github.com/Tencent-RTC/Chat_SDK_SwiftPM)（IM SDK），无需单独添加

## 集成

### Xcode

File > Add Package Dependencies，输入：

```
https://github.com/Tencent-RTC/TIMPush_SwiftPM.git
```

选择版本规则 Up to Next Major Version，将 `TIMPush_SwiftPM` 添加到 App target。
如果使用 Notification Service Extension，也需要把 `TIMPush_SwiftPM` 添加到该 extension target。

### Package.swift

```swift
dependencies: [
    .package(url: "https://github.com/Tencent-RTC/TIMPush_SwiftPM.git", from: "9.1.7824")
],
targets: [
    .target(name: "YourTarget", dependencies: [
        .product(name: "TIMPush_SwiftPM", package: "TIMPush_SwiftPM")
    ])
]
```

## 使用

Swift：

```swift
import TIMPush

TIMPushManager.getRegistrationID { id in print(id) }
```

Objective-C：

```objc
#import <TIMPush/TIMPush.h>
```

## 版本

版本号与 IM SDK 保持一致，例如 `9.1.7824`。

## 文档

[离线推送集成文档](https://cloud.tencent.com/document/product/269/133003)
