class Appshot < Formula
  desc "Interactive, config-driven App Store screenshot tool"
  homepage "https://github.com/jems19s/appshot-studio"
  url "https://github.com/jems19s/appshot-studio/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "32608fa6fbcfc0958e692a1d1e6f80a3d7e8c754038a7ecfc655e1e2dad1f642"
  license "MIT"
  head "https://github.com/jems19s/appshot-studio.git", branch: "main"

  depends_on xcode: ["15.3", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/appshot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/appshot --version")
  end
end
