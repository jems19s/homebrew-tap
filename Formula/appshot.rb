class Appshot < Formula
  desc "Interactive, config-driven App Store screenshot tool"
  homepage "https://github.com/jems19s/appshot-studio"
  url "https://github.com/jems19s/appshot-studio/releases/download/v1.4.1/appshot-1.4.1-macos-universal.zip"
  sha256 "7f929efbcafc18c2d9836a72b637f3b5f949ab93f26e25ae013d74ee1ddf83d3"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "appshot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/appshot --version")
  end
end
