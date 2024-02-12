// swift-tools-version:5.7
import PackageDescription

let package = Package(
  name: "Brightroom",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(name: "BrightroomEngine", targets: ["BrightroomUI"]),
    .library(name: "BrightroomUI", targets: ["BrightroomUI"]),
    .library(name: "BrightroomUIPhotosCrop", targets: ["BrightroomUIPhotosCrop"])
  ],
  dependencies: [
    .package(url: "https://github.com/VergeGroup/Verge.git", from: "12.0.0-beta.2"),
    .package(url: "https://github.com/FluidGroup/TransitionPatch.git", from: "1.0.3")
  ],
  targets: [
    .target(
      name: "BrightroomEngine",
      dependencies: ["Verge"]
    ),
    .target(
      name: "BrightroomUI",
      dependencies: ["BrightroomEngine", "Verge", "TransitionPatch"]
    ),
    .target(
      name: "BrightroomUIPhotosCrop",
      dependencies: ["BrightroomUI"]
    )
  ],
  swiftLanguageVersions: [.v5]
)
