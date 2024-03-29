cask "lapce" do
  version "0.3.0"
  sha256 "6809ae58793a2515e16b86ded1fe02d684aa8cc9a0e9a55d9de413bbec1b4a6f"

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
