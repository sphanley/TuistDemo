import ProjectDescription

let project = Project(
    name: "TuistDemo",
    packages: [
        .local(path: "LocalPackages/RealmSwift")
    ],
    targets: [
        .target(
            name: "TuistDemo",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TuistDemo",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["TuistDemo/Sources/**"],
            resources: ["TuistDemo/Resources/**"],
            dependencies: [
                .package(product: "RealmSwift")
            ]
        ),
        .target(
            name: "TuistDemoTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TuistDemoTests",
            infoPlist: .default,
            sources: ["TuistDemo/Tests/**"],
            resources: [],
            dependencies: [
                .target(name: "TuistDemo")
            ]
        ),
    ]
)
