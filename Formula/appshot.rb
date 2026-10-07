class Appshot < Formula
  desc "Interactive, config-driven App Store screenshot tool"
  homepage "https://github.com/jems19s/appshot-studio"
  url "https://github.com/jems19s/appshot-studio/releases/download/v1.2.0/appshot-1.2.0-macos-universal.zip"
  sha256 "b5eea2c1b8a16b4274ed3fafa24435aae907964009e362b5b8b36af86504868d"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "appshot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/appshot --version")
  end
end
