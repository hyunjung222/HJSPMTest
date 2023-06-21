// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DcentBiometricTest",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "DcentBiometricTest", targets:["DcentBiometric"]),
    ],
    dependencies: [
        .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
        .package(name: "XCGLogger", url: "https://github.com/DaveWoodCom/XCGLogger.git", majorVersion: 7),
        .package(name: "BigInt", url: "https://github.com/attaswift/BigInt.git", from: "5.3.0")
    ],
    targets: [
        .binaryTarget(name: "DcentBiometricTest", path: "DcentBiometric.xcframework")
         .target(name: "DcentBiometricFrameworkBundle",
            dependencies: [ .target(name: "DcentBiometricTest"), "SwiftProtobuf", "XCGLogger", "BigInt"],
            path: "DcentBiometricFrameworkBundle")
        .target(
          name: "MyTarget",
          dependencies: [.product(name: "SwiftProtobuf", package: "swift-protobuf")]
        ),
    ]
)
