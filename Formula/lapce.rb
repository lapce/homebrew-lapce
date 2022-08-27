class Lapce < Formula
  desc "Lightning-fast and Powerful Code Editor written in Rust"
  homepage "https://lapce.dev"
  url "https://github.com/lapce/lapce/archive/v0.1.3.tar.gz"
  sha256 "381f95be6ed43396ecff5da5ce7d2bc75969ba1f67e251410d72753e1059d74d"
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
