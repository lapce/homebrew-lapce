cask "lapce" do
  version "0.2.2"
  sha256 "c0ad99dff1b338818d38c415eaa1908c50fc59c41856014ace4d69e44463a9cc"

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
