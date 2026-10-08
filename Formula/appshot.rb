class Appshot < Formula
  desc "Interactive, config-driven App Store screenshot tool"
  homepage "https://github.com/jems19s/appshot-studio"
  url "https://github.com/jems19s/appshot-studio/releases/download/v1.4.0/appshot-1.4.0-macos-universal.zip"
  sha256 "e06df8d3b3f11643a7384d6809a262e7ebb661e2873a198523ea57cb5fedacfb"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "appshot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/appshot --version")
  end
end
