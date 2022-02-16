// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "PackagePluginBugDemo",
    platforms: [.iOS(.v13)],
    products: [
        .executable(name: "PackagePluginBugDemo", targets: ["PackagePluginBugDemo"])
    ],
    dependencies: [
        .package(url: "git@github.com:canius/PluginTool.git", exact: "1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "PackagePluginBugDemo",
            resources: [.process("Resources")],
            plugins: [.plugin(name: "SwiftGenPlugin", package: "PluginTool")]),
    ]
)
