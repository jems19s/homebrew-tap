class Appshot < Formula
  desc "Interactive, config-driven App Store screenshot tool"
  homepage "https://github.com/jems19s/appshot-studio"
  url "https://github.com/jems19s/appshot-studio/releases/download/v1.1.0/appshot-1.1.0-macos-universal.zip"
  sha256 "9e846694e2e283ee2eb6433588184de9641528e071ffe9568b5fa8afa718d505"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "appshot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/appshot --version")
  end
end
