cask "medha" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "e9c3e68346baa54c926da6658d312bda03ff7b63313b035bb8fe843842cb94fc",
         intel: "8c6fc33579ea0373fcba04db0aaadc4596d84c91aaea072978de0212d1131a91"

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
