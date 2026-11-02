class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.13.0/ele_darwin_arm64.tar.gz"
      sha256 "c7b54f35160e0b72db581bd8282fd62dae13c2483b5cc8d5c8c55f48b9f046a5"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.13.0/ele_darwin_amd64.tar.gz"
      sha256 "bd23fed83d0387ab4109aa190f47dc5cae327bf0a10663590c87805e2e88ffa8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.13.0/ele_linux_arm64.tar.gz"
      sha256 "b9e2cd634f4e5d5b7136b9632a138f7ca101f87c95632180be7a45cb3a6dac57"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.13.0/ele_linux_amd64.tar.gz"
      sha256 "821dd7d73b75bd23f7d13b5cc1af1f9f3e7daf6aed935bca7c8fcae838db395b"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
