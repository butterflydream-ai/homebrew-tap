cask "coco" do
  version "1.26.2"
  sha256 "0728c13993f7451c3d211db5f6dde21bc474fe280b881248062d5480e64362df"

  url "https://raw.githubusercontent.com/butterflydream-ai/Coco/sparkle-v1.26.2-b1789289290/Coco-#{version}-macos.dmg",
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
