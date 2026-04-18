cask "medha" do
  arch arm: "arm64", intel: "x64"
  version "0.5.0"
  sha256 arm:   "782612ba2df2a707a247d2ec737fe910efba58e25dedd93f12c7072bcfd3fb44",
         intel: "3bb657f6686fd9245fd3ef56b45b07b7532144ebc5132f27b74a3aa8a1d628dd"

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
