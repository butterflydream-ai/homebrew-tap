cask "coco" do
  version "1.24.0"
  sha256 "eddc6155074d09d6f6120a1ba6e4fa6b411277c3d1c674f632c5f73661cac186"

  url "https://raw.githubusercontent.com/butterflydream-ai/Coco/sparkle-v1.24.0-b1788581173/Coco-#{version}-macos.dmg",
      verified: "raw.githubusercontent.com/butterflydream-ai/Coco/"
  name "Coco"
  desc "Keyboard-driven launcher with clipboard history and plugins"
  homepage "https://coco.butterflydream.ai/"

  livecheck do
    url "https://coco.butterflydream.ai/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Coco.app"

  # NOTE: a future release will embed a `coco` CLI at
  # Contents/Helpers/coco (see Sources/CocoCLI in the source repo). Once a
  # tagged release actually ships that binary, uncomment the following line
  # — `brew install` fails hard if the symlink target does not exist in the
  # installed bundle, which is why it is not enabled yet for 1.23.0.
  # binary "#{appdir}/Coco.app/Contents/Helpers/coco"

  zap trash: [
    "~/.coco",
    "~/Library/Application Support/Coco",
    "~/Library/Caches/Coco",
    "~/Library/Preferences/ai.butterflydream.coco.plist",
  ]
end
