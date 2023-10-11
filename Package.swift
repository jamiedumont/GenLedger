// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GenLedger",
    dependencies: [
        .package(
            url: "https://github.com/johnsundell/files.git",
            from: "4.0.0"
        ),
        .package(url: "https://github.com/swiftcsv/SwiftCSV.git", from: "0.8.0")
    ],
    targets: [
        .executableTarget(
            name: "GenLedger",
            dependencies: ["GenLedgerCore"]
        ),
        .target(
            name: "GenLedgerCore",
            dependencies: [
                .product(name: "Files", package: "files"),
                .product(name: "SwiftCSV", package: "swiftcsv")
            ]
        )
    ]
)
