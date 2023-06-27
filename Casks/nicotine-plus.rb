cask "nicotine-plus" do
  version "3.2.9"
  sha256 "9e44c0cb3b9987fbd2dd4037441eeef934978f763f9fb2ce637977e853da1bd2"

  url "https://github.com/nicotine-plus/nicotine-plus/releases/download/#{version}/macos-installer.zip",
      verified: "github.com/nicotine-plus/nicotine-plus/"
  name "nicotine-plus"
  desc "Graphical client for Soulseek"
  homepage "https://nicotine-plus.org/"

  livecheck do
    url "https://github.com/nicotine-plus/nicotine-plus/releases/latest"
    strategy :header_match
  end

  container nested: "Nicotine+-#{version}.dmg"

  app "Nicotine+.app"

  zap trash: [
    "~/Library/Preferences/org.nicotine_plus.Nicotine.plist",
  ]
end
