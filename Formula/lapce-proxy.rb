class LapceProxy < Formula
  desc "Proxy for Lapce"
  homepage "https://lapce.dev"
  url "https://github.com/lapce/lapce/archive/v0.2.5.tar.gz"
  sha256 "3b8357653eda77b2c85306ba9f7202e539987ada4a7b5be2018b142bb23be7e4"
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
