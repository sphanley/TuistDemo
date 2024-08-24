import ProjectDescription

let project = Project(
    name: "TuistDemo",
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
            dependencies: [.external(name: "RealmSwift")]
        ),
        .target(
            name: "TuistDemoTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TuistDemoTests",
            infoPlist: .default,
            sources: ["TuistDemo/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistDemo")]
        ),
    ]
)
