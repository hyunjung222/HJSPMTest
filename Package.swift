// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DcentBiometric",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "DcentBiometric", targets:["DcentBiometricFrameworkBundle"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
//        .package(url: "https://github.com/DaveWoodCom/XCGLogger.git", from: "7.0.1"),
        .package(url: "https://github.com/attaswift/BigInt.git", from: "5.3.0")
    ],
    targets: [
        //        Target
        .binaryTarget(name: "DcentBiometric", path: "DcentBiometric.xcframework"),
//        .target(name: "DcentBiometricFrameworkBundle",
//                dependencies: [ .target(name: "DcentBiometric"), .product(name: "SwiftProtobuf", package: "swift-protobuf"), /*.product(name: "XCGLogger", package: "XCGLogger"),*/ .product(name: "BigInt", package: "BigInt")],
//                path: "DcentBiometricFrameworkBundle")
        .target(name: "DcentBiometricFrameworkBundle",
            dependencies: [ .target(name: "DcentBiometric"), "SwiftProtobuf", "BigInt"],
            path: "DcentBiometricFrameworkBundle")
         
    ]
)
