cask "medha" do
  arch arm: "arm64", intel: "x64"
  version "0.4.0"
  sha256 arm:   "29679025d40a80dbc55ed4cc212ddde01136226155ece8c4148909ca66df1e6b",
         intel: "51fbf24dbad28338fe40089059fd398d9de69dd997d3ed3229a7fb4e05d69607"

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
