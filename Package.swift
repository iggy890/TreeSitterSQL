// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterSQL",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterSQL", targets: ["TreeSitterSQL"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterSQL",
                path: ".",
                exclude: [
                    "README.md",
                    // any additional files to exclude 
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ]
)
