// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Adfurikun-SPM-InMobi",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdfurikunInMobi", targets: ["AdfurikunInMobi"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/glossom-dev/Adfurikun-SPM-Core.git",
            exact: "4.5.0-alpha.3"
        ),
        .package(
            url: "https://github.com/InMobi/InMobiSDK-Swift-Package.git",
            exact: "11.4.1"
        ),
    ],
    targets: [
        .target(
            name: "AdfurikunInMobi",
            dependencies: [
                .product(name: "AdfurikunSDK", package: "Adfurikun-SPM-Core"),
                .product(name: "InMobiSDK", package: "InMobiSDK-Swift-Package")
            ],
            path: "Sources",
            publicHeadersPath: "."
        )
    ]
)
