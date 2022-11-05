class LapceProxy < Formula
  desc "Proxy for Lapce"
  homepage "https://lapce.dev"
  url "https://github.com/lapce/lapce/archive/v0.2.2.tar.gz"
  sha256 "43afa4c83333d34811c8504fc6356f333a85b086ef3f35990c62338a9983a8a4"
  license "Apache-2.0"
  head "https://github.com/lapce/lapce.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--profile", "release-lto", "--bin", "lapce-proxy", *std_cargo_args
  end

  test do
    lapce_version = shell_output("#{bin}/lapce-proxy --version")
    assert_match version, lapce_version
  end
end
