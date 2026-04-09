cask "medha" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "e41fcc67e097b5890a98f22ee70da7e233362d1f27c93cfc30d7e15ee8f0604d",
         intel: "1d1cdc01f9a062e78b4e432b431f4331c43fa2b7869aae321d2329fc77da6370"

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
