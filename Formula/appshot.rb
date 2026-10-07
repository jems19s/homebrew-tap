class Appshot < Formula
  desc "Interactive, config-driven App Store screenshot tool"
  homepage "https://github.com/jems19s/appshot-studio"
  url "https://github.com/jems19s/appshot-studio/releases/download/v1.3.0/appshot-1.3.0-macos-universal.zip"
  sha256 "e6295b3ea56a7564a4dac130b3211cca584e69aab70f80c6a03ebaa23e1a8d35"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "appshot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/appshot --version")
  end
end
