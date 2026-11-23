class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "1.4.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.4.0/ele_darwin_arm64.tar.gz"
      sha256 "2840985357cd3242d066c6567ad7e68cfd4290c0883b1f2cae174782d822a6c3"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.4.0/ele_darwin_amd64.tar.gz"
      sha256 "2e6a662fcb20217abc06655938a1f8540a63972dac2ebe3f559cb8134ef3b53e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.4.0/ele_linux_arm64.tar.gz"
      sha256 "4a10819af272213f6955c9781d6831ecf84a076ae43aeb03113456b08af7a02f"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.4.0/ele_linux_amd64.tar.gz"
      sha256 "c517dcf83ec136f3798a4d5035f27e4b4f2e84f7c82fc11d27dc8781daf373b8"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
