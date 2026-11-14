class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.1.0/ele_darwin_arm64.tar.gz"
      sha256 "aa928a8e64a29e16e37a53f7263813bdddad5ce139d14f8bc1d1d4417a519847"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.1.0/ele_darwin_amd64.tar.gz"
      sha256 "2469fa68135574c5347aacf6403a4ef6914de1984f6bdaad1227ce2f01a0d0a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.1.0/ele_linux_arm64.tar.gz"
      sha256 "5882ee3d6c620cf5c9db92e7786093672bcce868dac050210e7531c9dbd047cb"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.1.0/ele_linux_amd64.tar.gz"
      sha256 "3123343ed95552d3097901a4661f5b4e63d339861d1e37ad5ca5fce090d12848"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
