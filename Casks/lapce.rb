cask "lapce" do
  version "0.2.1"
  sha256 "c93649a3c8e7e9e35867fa6523b7b45bc5c36f4d56465a752d8de53a7e9f846c"

  url "https://github.com/lapce/lapce/releases/download/v#{version}/Lapce-macos.dmg",
    verified: "github.com/lapce/lapce/"
  name "Lapce"
  desc "Lightning-fast and Powerful Code Editor written in Rust"
  homepage "https://lapce.dev/"

  app "Lapce.app"

  uninstall quit: "io.lapce"

  zap trash: [
    "~/Library/Application Support/Lapce",
    "~/Library/Saved Application State/io.lapce.savedState",
  ]
end
