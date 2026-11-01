# Written by scripts/release.sh for uno 0.1.3; do not edit by hand.
class Uno < Formula
  desc "Uno, the unocode coding agent for the terminal"
  homepage "https://unocode.motiontic.com"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.3/uno-aarch64-apple-darwin"
      sha256 "13cd3a218e5c42788f698ab9277770e15b9ea5ced369ba2235a6138bc3592e7e"
    end
    on_intel do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.3/uno-x86_64-apple-darwin"
      sha256 "b44ce6d484263c9bc3b3ba8b797ff63936d47161407001f5b326e0269d6a8a7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.3/uno-aarch64-unknown-linux-musl"
      sha256 "f1cf27f8bcf449d4196193a9bf8c139103a927e1c805412af82ab7d749af53a0"
    end
    on_intel do
      url "https://github.com/motiontic/unocode-releases/releases/download/v0.1.3/uno-x86_64-unknown-linux-musl"
      sha256 "e0391d459c59e74054fe9bac7c9962b917aa56294ba1457c61231609db8415b3"
    end
  end

  def install
    bin.install Dir["uno-*"].first => "uno"
  end

  test do
    assert_equal "uno #{version}", shell_output("#{bin}/uno --version").strip
  end
end
