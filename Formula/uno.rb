# Written by scripts/release.sh for uno 0.1.2; do not edit by hand.
class Uno < Formula
  desc "Uno, the unocode coding agent for the terminal"
  homepage "https://unocode.motiontic.com"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.2/uno-aarch64-apple-darwin"
      sha256 "f80994fbd55edc0abf576d831fefe80a53486dc56c8bc7d3a8e6bad95dfbe34c"
    end
    on_intel do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.2/uno-x86_64-apple-darwin"
      sha256 "0a5494f2bbe9be50f3cb4026bd11daa9af7415775cdf53d7c847f823f9a185a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.2/uno-aarch64-unknown-linux-musl"
      sha256 "53d35c6aa79cd8cbacdf4f9510547bff73e5cb675fb0a98bac9ec86e3b0e0bc4"
    end
    on_intel do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.2/uno-x86_64-unknown-linux-musl"
      sha256 "bcfbcb377902c2b5709ab44bbee734fd72f6129c264d019982e6bf056bf7be81"
    end
  end

  def install
    bin.install Dir["uno-*"].first => "uno"
  end

  test do
    assert_equal "uno #{version}", shell_output("#{bin}/uno --version").strip
  end
end
