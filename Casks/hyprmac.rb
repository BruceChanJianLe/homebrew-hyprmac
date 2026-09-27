# HyprMac built from the BruceChanJianLe fork. Versions are upstream's
# number plus a fork revision: 0.14.1-1, 0.14.1-2, ... The release job on
# the fork produces the zip; bump version and sha256 here per release.
cask "hyprmac" do
  version "0.14.2-1"
  sha256 "91ede9c4bf35058d9c071bb7ddcc7027afdd12a242c33a6c94a4e783bec276b1"

  url "https://github.com/BruceChanJianLe/HyprMac/releases/download/v#{version}/HyprMac-#{version}.zip"
  name "HyprMac"
  desc "Tiling window manager for macOS inspired by Hyprland (fork with workspace pins)"
  homepage "https://github.com/BruceChanJianLe/HyprMac"

  depends_on macos: :ventura

  app "HyprMac.app"

  zap trash: [
    "~/Library/Application Support/HyprMac",
  ]

  caveats <<~EOS
    HyprMac requires Accessibility permission.
    Grant it in System Settings -> Privacy & Security -> Accessibility.
    The build is ad-hoc signed, so macOS asks again after every update.
  EOS
end
