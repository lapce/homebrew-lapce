cask "lapce-nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/lapce/lapce/releases/download/nightly/Lapce-macos.dmg",
    verified: "github.com/lapce/lapce/"
  name "Lapce (Nightly)"
  desc "Lightning-fast and Powerful Code Editor written in Rust"
  homepage "https://lapce.dev/"

  app "Lapce.app"

  uninstall quit: "io.lapce"

  zap trash: [
    "~/Library/Application Support/dev.lapce.Lapce-Nightly",
    "~/Library/Saved Application State/io.lapce.savedState",
  ]
end
