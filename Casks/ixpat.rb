cask "ixpat" do
  version "0.1.1"
  sha256 "2f57a232db5e90eaa98aa982322e68d803e9abb5af689fca48f72a57537d6785"

  url "https://github.com/knightynite/ixpat/releases/download/v#{version}/iXpat-#{version}.dmg"
  name "iXpat"
  desc "Haptics, Action Ring and kinetic scrolling for the Surface Mouse (2nd Edition)"
  homepage "https://knightynite.github.io/ixpat/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "iXpat.app"

  zap trash: [
    "~/Library/Application Support/iXpat",
    "~/Library/Preferences/com.alcybr.ixpat.plist",
  ]
end
