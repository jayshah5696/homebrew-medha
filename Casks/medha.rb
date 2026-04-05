cask "medha" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "9d8d3739eabb098d71c187d70e2a2ecc6ab0140be60df45f82622dcbbf9d1378",
         intel: "4f4559b2c1d9207ad2bf2ddd4c4ad69cffba9814c960c8d4bc8e1e649fd34abd"

  url "https://github.com/jayshah5696/medha/releases/download/v#{version}/Medha-#{version}-#{arch}.dmg"
  name "Medha"
  desc "Local-first SQL IDE for flat files"
  homepage "https://github.com/jayshah5696/medha"

  depends_on macos: ">= :ventura"

  app "Medha.app"

  zap trash: [
    "~/Library/Application Support/medha",
    "~/Library/Caches/com.medha.app",
    "~/Library/Logs/medha",
    "~/Library/Preferences/com.medha.app.plist",
    "~/.medha",
  ]
end
