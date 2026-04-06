cask "medha" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "dd6edc2725e07af2e7e62a705313dcfba24104a2f8f9696dfc8ae5534badd48e",
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
