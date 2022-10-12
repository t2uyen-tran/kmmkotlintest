// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://api.github.com/repos/t2uyen-tran/kmmkotlintest/releases/assets/80731774.zip"
let remoteKotlinChecksum = "df618dfe9a2f033f9d8b682964f8234be71434ddc754a66f6dca350c2280aa27"
let packageName = "shared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)