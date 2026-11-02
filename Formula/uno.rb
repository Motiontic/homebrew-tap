# Written by scripts/release.sh for uno 0.1.4; do not edit by hand.
class Uno < Formula
  desc "Uno, the unocode coding agent for the terminal"
  homepage "https://unocode.motiontic.com"
  version "0.1.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.4/uno-aarch64-apple-darwin"
      sha256 "1d7409077c07b5b7245c848fb628de1f8937e9ebabea7fe4bac908f7035d9aba"
    end
    on_intel do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.4/uno-x86_64-apple-darwin"
      sha256 "d89e02b06cd4f36be8b068e551734f3062070f2431e8f0f7cee599fb5abcd480"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.4/uno-aarch64-unknown-linux-musl"
      sha256 "c083169589c5376264cf3bae9e7419852c7533e52e692cacfb36ac0ab0e6c3de"
    end
    on_intel do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.4/uno-x86_64-unknown-linux-musl"
      sha256 "d475980af33ac9e0d329fcad49ee6f7fbf2480b74377429c61dced42789259d3"
    end
  end

  def install
    bin.install Dir["uno-*"].first => "uno"
  end

  test do
    assert_equal "uno #{version}", shell_output("#{bin}/uno --version").strip
  end
end
