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
    dependencies: [],
    targets: [
        .binaryTarget(name: "DcentBiometricTest", path: "DcentBiometric.xcframework")
         .target(name: "DcentBiometricFrameworkBundle",
            dependencies: [ .target(name: "DcentBiometricTest")],
            path: "DcentBiometricFrameworkBundle")
    ]
)
