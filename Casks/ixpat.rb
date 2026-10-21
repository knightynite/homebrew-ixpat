cask "ixpat" do
  version "0.1.0"
  sha256 "3ec50607fe490b0afcff12697178f6478889910ad74ae42838683a0ed6ff4f8d"

  url "https://github.com/knightynite/ixpat/releases/download/v#{version}/iXpat-#{version}.dmg"
  name "iXpat"
  desc "Haptics, Action Ring, kinetic scrolling and force click for the Surface Mouse (2nd Edition)"
  homepage "https://knightynite.github.io/ixpat/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "iXpat.app"

  zap trash: [
    "~/Library/Application Support/iXpat",
    "~/Library/Preferences/com.alcybr.ixpat.plist",
  ]
end
