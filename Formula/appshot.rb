class Appshot < Formula
  desc "Interactive, config-driven App Store screenshot tool"
  homepage "https://github.com/jems19s/appshot-studio"
  url "https://github.com/jems19s/appshot-studio/releases/download/v1.2.1/appshot-1.2.1-macos-universal.zip"
  sha256 "23673ab08d6d48cd723201831a96d40704ddc3a396fd81ce39f7eaa7d1c5ae32"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "appshot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/appshot --version")
  end
end
