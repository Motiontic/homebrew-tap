# Written by scripts/release.sh for uno 0.1.0; do not edit by hand.
class Uno < Formula
  desc "Uno, the unocode coding agent for the terminal"
  homepage "https://unocode.motiontic.com"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.0/uno-aarch64-apple-darwin"
      sha256 "bf3afbfeb26b13738d7391f1e637031b3f3c1b5bc0441317cd0821b19d47a9ed"
    end
    on_intel do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.0/uno-x86_64-apple-darwin"
      sha256 "5f3bbfa8c39ce7ce1b17f17aed1357293980bd6a631b436307ed3691444777aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.0/uno-aarch64-unknown-linux-musl"
      sha256 "f2dc1b1eac2074da188f7ba2f7ff08a980d618a1f4cf012a0956e7dc098d16b9"
    end
    on_intel do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.0/uno-x86_64-unknown-linux-musl"
      sha256 "a92ee806168778f2b8d31f3c387a69caa01f4380812cb17699f8649176e74efd"
    end
  end

  def install
    bin.install Dir["uno-*"].first => "uno"
  end

  test do
    assert_equal "uno #{version}", shell_output("#{bin}/uno --version").strip
  end
end
