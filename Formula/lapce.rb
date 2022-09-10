class Lapce < Formula
  desc "Lightning-fast and Powerful Code Editor written in Rust"
  homepage "https://lapce.dev"
  url "https://github.com/lapce/lapce/archive/v0.2.0.tar.gz"
  sha256 "163102244c6586530bc0f0736219d38a44797b2a6d97ad37d5f6553ffc8f1a04"
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
