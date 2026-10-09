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
        .package(url: "https://github.com/AdsEye/AdsEyeSDK.git", exact: "1.4.22"),
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
    url: "https://cpc-static-docs.oss-cn-beijing.aliyuncs.com/adseye_sdk_ios/1.4.22/spm/AdsEyeTopOnAdapter-1.4.22-10091517.zip",
    checksum: "37bd0954a549de04143cb3343bd4e5a5e3465993de55106bdf7c02ce23ef9914"
)
    ]
)
