// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "RealmSwift",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "Realm",
            targets: ["Realm"]),
        .library(
            name: "RealmSwift",
            targets: ["RealmSwift", "Realm"])
    ],
    dependencies: [],
    targets: [
        // .binaryTarget(
        //     name: "Realm",
        //     url: "https://github.com/realm/realm-swift/releases/download/v10.53.0/Realm.spm.zip",
        //     checksum: "632a17f1ca302b777572a20c158f3c52ad76e343cd228887ec7a6a6fba18e9cc"
        // ),
        // .binaryTarget(
        //     name: "RealmSwift",
        //     url: "https://github.com/realm/realm-swift/releases/download/v10.53.0/RealmSwift@15.4.spm.zip",
        //     checksum: "0897ce8ceb4f983d6d07ab9b00eb59ab2bc855e2d54018c919d1e92db304f3f1"
        // )
        .binaryTarget(
            name: "Realm",
            path: "Realm.spm.zip"
        ),
        .binaryTarget(
            name: "RealmSwift",
            path: "RealmSwift@15.4.spm.zip"
        )
    ]
)