cask "coco" do
  version "1.26.6"
  sha256 "1f492bbec50a1a3f7df4a4f22628175525649b6e2d1b04ce0353c03a24746f72"

  url "https://raw.githubusercontent.com/butterflydream-ai/Coco/sparkle-v1.26.6-b1789489833/Coco-#{version}-macos.dmg",
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
