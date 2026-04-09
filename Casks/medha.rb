cask "medha" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "e41fcc67e097b5890a98f22ee70da7e233362d1f27c93cfc30d7e15ee8f0604d",
         intel: "754abd4d5e5b956a1336e56c77cd29d70d96a864d0e7a6f67916df261e584e13"

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
