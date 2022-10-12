class Lapce < Formula
  desc "Lightning-fast and Powerful Code Editor written in Rust"
  homepage "https://lapce.dev"
  url "https://github.com/lapce/lapce/archive/v0.2.1.tar.gz"
  sha256 "af73cf04318a70d02d3aaed21b4e601648f9d777f30f0af4266354782b888a28"
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
