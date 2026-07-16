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
            exact: "4.4.000"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "InMobi",
            url: "https://dl.inmobi.com/inmobi-sdk/IM/InMobi-iOS-SDK-11.3.0.zip",
            checksum: "1dc4583ad8718845180903bfa6accc17c5248eca6d0aabbd43b9fb0dad1f58ce"
        ),
        .target(
            name: "AdfurikunInMobi",
            dependencies: [
                .product(name: "AdfurikunSDK", package: "Adfurikun-SPM-Core"),
                "InMobi",
            ],
            path: "Sources",
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedLibrary("sqlite3"),
                .linkedFramework("WebKit"),
            ]
        )
    ]
)
