// swift-tools-version: 5.9
// 此文件由 AdsEye SPM 发布流程生成，请勿手工修改 URL 和 checksum。
import PackageDescription

let package = Package(
    name: "AdsEyeTopOn",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdsEyeTopOn", targets: ["AdsEyeTopOnLinker"])
    ],
    dependencies: [
        .package(url: "https://github.com/AdsEye/AdsEyeSDK.git", exact: "1.4.21"),
              .package(url: "https://github.com/AdsEye/AdsEyeSPM-TPNiOS.git", exact: "6.5.74"),
              .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.0")
    ],
    targets: [
        .target(
    name: "AdsEyeTopOnLinker",
    dependencies: [
        .product(name: "AdsEyeAdSDK", package: "adseyesdk"),
              .target(name: "AdsEyeTopOnAdapter"),
              .product(name: "TPNiOS", package: "adseyespm-tpnios"),
              .product(name: "AppLovinSDK", package: "applovin-max-swift-package")
    ],
    linkerSettings: [
        .linkedFramework("UIKit"),
              .linkedFramework("Foundation"),
              .linkedFramework("Security"),
              .linkedFramework("StoreKit"),
              .linkedFramework("SystemConfiguration"),
              .linkedFramework("CoreTelephony"),
              .linkedFramework("AVKit"),
              .linkedFramework("AVFoundation"),
              .linkedFramework("CoreMedia"),
              .linkedFramework("DeviceCheck"),
              .linkedFramework("CoreMotion"),
              .linkedFramework("WebKit"),
              .linkedFramework("AdSupport"),
              .linkedLibrary("c++abi"),
              .linkedLibrary("sqlite3"),
              .linkedLibrary("c++"),
              .linkedLibrary("xml2"),
              .linkedLibrary("resolv"),
              .linkedLibrary("bz2"),
              .linkedLibrary("z")
    ]
),
              .binaryTarget(
    name: "AdsEyeTopOnAdapter",
    url: "https://cpc-static-docs.oss-cn-beijing.aliyuncs.com/adseye_sdk_ios/1.4.21/spm/AdsEyeTopOnAdapter-1.4.21-09101108.zip",
    checksum: "8241a4e16272e89fd7f50252b36871adfb2adff0b4c152072f90e0ed74079f73"
)
    ]
)
