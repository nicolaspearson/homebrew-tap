class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.11.0/ele_darwin_arm64.tar.gz"
      sha256 "6e568b46197cecef2147582d742e40fcf2d7d6d92f7c75824ce7db4b1405b245"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.11.0/ele_darwin_amd64.tar.gz"
      sha256 "bfbd9b158b7ffb417e88f29197beb67e7151a815629866bf5a9d69d14d81334e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.11.0/ele_linux_arm64.tar.gz"
      sha256 "2f652c3774f7ea3356d6965082ce263892f72ab006b0cc4313e0189cd170b328"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.11.0/ele_linux_amd64.tar.gz"
      sha256 "d62c41a756ba40646863485fb47e02414257a97c6f3b67c6a7ff0deca84dbf8b"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
