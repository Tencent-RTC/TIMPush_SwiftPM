# TIMPush

English | [简体中文](README.zh-CN.md)

Swift Package Manager distribution of **TIMPush**, the offline push plugin for Tencent Cloud Chat (IM).

## Requirements

- iOS 14.0+
- The IM SDK ([Chat_SDK_SwiftPM](https://github.com/Tencent-RTC/Chat_SDK_SwiftPM)) is added automatically as a dependency. No need to add it separately.

## Installation

### Xcode

Go to File > Add Package Dependencies and enter:

```
https://github.com/Tencent-RTC/TIMPush_SwiftPM.git
```

Choose "Up to Next Major Version" as the dependency rule, then add `TIMPush_SwiftPM` to your app target.
If you use a Notification Service Extension, also add `TIMPush_SwiftPM` to the extension target.

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

## Usage

Swift:

```swift
import TIMPush

TIMPushManager.getRegistrationID { id in print(id) }
```

Objective-C:

```objc
#import <TIMPush/TIMPush.h>
```

## Versioning

Versions match the IM SDK version, for example `9.1.7824`.

## Documentation

[Offline Push Integration Guide](https://trtc.io/document/67555?product=push&menulabel=app%20push&platform=android)
