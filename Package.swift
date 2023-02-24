// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "tree-sitter-sql",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "tree-sitter-sql", targets: ["tree-sitter-sql"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "tree-sitter-sql",
                path: ".",
                exclude: [
                    "bindings",
                    "Cargo.toml",
                    "corpus",
                    "examples",
                    "grammar.js",
                    "LICENSE",
                    "Makefile",
                    "package.json",
                    "README.md",
                    "src/grammar.json",
                    "src/node-types.json",
                    // any additional files to exclude 
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ]
)
