class Lapce < Formula
  desc "Lightning-fast and Powerful Code Editor written in Rust"
  homepage "https://lapce.dev"
  url "https://github.com/lapce/lapce/archive/v0.3.0.tar.gz"
  sha256 "0940cdc3d40c298efec7b09e5cab7b44bdf64eecaa0ee5ac2baac53b56bdaf52"
  license "Apache-2.0"
  head "https://github.com/lapce/lapce.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--profile", "release-lto", "--bin", "lapce", *std_cargo_args
  end

  test do
    lapce_version = shell_output("#{bin}/lapce --version")
    assert_match version, lapce_version
  end
end
