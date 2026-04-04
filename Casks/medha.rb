cask "medha" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "af8eb7b21693c06d7a591618e41987da4d7082e40b1b3c2f0086c55d7f8f7128",
         intel: "2ef7291a8f570e10b6eaeef38ef4b17085b02ff27dca5398d589670b49493a42"

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
