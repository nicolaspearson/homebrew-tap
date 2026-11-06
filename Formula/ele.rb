class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "0.14.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.14.0/ele_darwin_arm64.tar.gz"
      sha256 "701c489ab68344c67a9668deb90531a2b6d7f71d12c9c976532fbfc1973b9105"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.14.0/ele_darwin_amd64.tar.gz"
      sha256 "27746b35272548b1329c7c052054752bdfbc96e077bddd1766b69c15c99b44ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.14.0/ele_linux_arm64.tar.gz"
      sha256 "3210866c970afc6dc6a7756c8e896e3edb0ed9db1e5f5aed7465bb3501824816"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.14.0/ele_linux_amd64.tar.gz"
      sha256 "3383b8fac17ee7e5a517fb83dc6d04670bd5eea03ffee5317c08f939cd51e09b"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
