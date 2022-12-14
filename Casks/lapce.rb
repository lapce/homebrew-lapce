cask "lapce" do
  version "0.2.5"
  sha256 "383de3c0d363838ac4b0e006018126916a8aee2d51ecfd06f60914d59bec9ee0"

  url "https://github.com/lapce/lapce/releases/download/v#{version}/Lapce-macos.dmg",
    verified: "github.com/lapce/lapce/"
  name "Lapce"
  desc "Lightning-fast and Powerful Code Editor written in Rust"
  homepage "https://lapce.dev/"

  app "Lapce.app"
  binary "#{appdir}/Lapce.app/Contents/MacOS/lapce"

  uninstall quit: "io.lapce"

  zap trash: [
    "~/Library/Application Support/dev.lapce.Lapce-Stable",
    "~/Library/Saved Application State/io.lapce.savedState",
  ]
end
