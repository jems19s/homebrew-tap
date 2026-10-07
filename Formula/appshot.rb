class Appshot < Formula
  desc "Interactive, config-driven App Store screenshot tool"
  homepage "https://github.com/jems19s/appshot-studio"
  url "https://github.com/jems19s/appshot-studio/releases/download/v1.2.2/appshot-1.2.2-macos-universal.zip"
  sha256 "afc283e463c2a003ab12aa6669c54ecd3de865ff8996d904f104f6c9156a767c"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "appshot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/appshot --version")
  end
end
