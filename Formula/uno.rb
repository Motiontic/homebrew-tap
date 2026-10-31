# Written by scripts/release.sh for uno 0.1.1; do not edit by hand.
class Uno < Formula
  desc "Uno, the unocode coding agent for the terminal"
  homepage "https://unocode.motiontic.com"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.1/uno-aarch64-apple-darwin"
      sha256 "bebfec38ca3819608eb3d47807d3098260a0062dd806d0abfa87e2fefd08055b"
    end
    on_intel do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.1/uno-x86_64-apple-darwin"
      sha256 "0881007e85cd7f5e21d25638e1149c6b4116217f056709cf9ffc875b3179ee52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.1/uno-aarch64-unknown-linux-musl"
      sha256 "e13fc45a5268647b34c22c3042475860c69c66356512465f1479ad1346a8f974"
    end
    on_intel do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.1/uno-x86_64-unknown-linux-musl"
      sha256 "e908c9d6a899196e773a1dbbc2819f8d409d675e45b801dfc6ad6a9796d6426e"
    end
  end

  def install
    bin.install Dir["uno-*"].first => "uno"
  end

  test do
    assert_equal "uno #{version}", shell_output("#{bin}/uno --version").strip
  end
end
