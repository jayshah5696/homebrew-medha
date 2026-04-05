cask "medha" do
  arch arm: "arm64", intel: "754abd4d5e5b956a1336e56c77cd29d70d96a864d0e7a6f67916df261e584e13"

  version "0.2.1"
  sha256 arm:   "2a3107c8d36b445913c12c8f14b3a0ffbc88c10845e35b3f5577ac6cb365cf72",
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
