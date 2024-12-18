// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "color_ios",
    platforms: [
        .iOS(.v12),
        .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "color_ios",
            targets: ["color_ios"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "color_ios",
            path: "color-ios",
            exclude: ["Info.plist"],
            sources: [
                "CLRColor.h",
                "CLRColor.m",
                "CLRColorConstants.h",
                "CLRColorConstants.m",
                "CLRColorUtils.h",
                "CLRColorUtils.m",
                "color_ios.h",
                "color_ios.swift"
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath(".")
            ]
        ),
        .testTarget(
            name: "color_iosTests",
            dependencies: ["color_ios"],
            path: "color-iosTests",
            exclude: ["Info.plist"]
        )
    ]
)
