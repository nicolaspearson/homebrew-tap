class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.9.0/ele_darwin_arm64.tar.gz"
      sha256 "6002829af9e0679c64ffccb24364d9d95d8f5a69c394d7721b4117ba5c566e81"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.9.0/ele_darwin_amd64.tar.gz"
      sha256 "269cc2723653b760d21400f8c8ba35bad827059c22a505be955aa848d6fc083d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.9.0/ele_linux_arm64.tar.gz"
      sha256 "7221c5182da79bc0cff7b8ed30fcb628ef7c2b2660dbda8dcb3e1c34e27a7920"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.9.0/ele_linux_amd64.tar.gz"
      sha256 "1304f6050ce370697a5dff6080fc3d845594eca054b73bb0b201e8aa15b70a41"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
