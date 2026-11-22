cask "coco" do
  version "1.27.0"
  sha256 "0237630f08383cb0541e369d797524c4137408deb2758e10eb30a766fb0f40c6"

  url "https://raw.githubusercontent.com/butterflydream-ai/Coco/sparkle-v1.27.0-b1795369352/Coco-#{version}-macos.dmg",
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

  binary "#{appdir}/Coco.app/Contents/Helpers/coco"

  zap trash: [
    "~/.coco",
    "~/Library/Application Support/Coco",
    "~/Library/Caches/Coco",
    "~/Library/Preferences/ai.butterflydream.coco.plist",
  ]
end
