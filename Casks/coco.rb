cask "coco" do
  version "1.23.0"
  sha256 "0aa4858291bae76b5d9c40d5bd08524016a4380c8b1b2b3bbd337e2aa98f94be"

  url "https://raw.githubusercontent.com/butterflydream-ai/Coco/sparkle-v1.23.0-b1788459706/Coco-#{version}-macos.dmg",
      verified: "raw.githubusercontent.com/butterflydream-ai/Coco/"
  name "Coco"
  desc "Keyboard-driven macOS launcher with clipboard history and plugins"
  homepage "https://coco.butterflydream.ai/"

  livecheck do
    url "https://coco.butterflydream.ai/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Coco.app"
  binary "#{appdir}/Coco.app/Contents/Helpers/coco"

  zap trash: [
    "~/Library/Application Support/Coco",
    "~/Library/Caches/Coco",
    "~/Library/Preferences/ai.butterflydream.coco.plist",
    "~/.coco",
  ]
end
