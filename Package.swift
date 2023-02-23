// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterSql",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterSql", targets: ["TreeSitterSql"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterSql",
                path: ".",
                exclude: [
                    "README.md",
                    // any additional files to exclude 
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ]
)
