class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.6.0/ele_darwin_arm64.tar.gz"
      sha256 "30c89585293541dfd41bd88aaee16fe59ea25a0112278a3f7be294786d25b538"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.6.0/ele_darwin_amd64.tar.gz"
      sha256 "7a676281349c1327f9a1c37b3cf08b06f9bbe80810700907a3714ed947b4abe2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.6.0/ele_linux_arm64.tar.gz"
      sha256 "787748b4f9d9b7ee4eaa97604c0383871f185b4534e96d3845bd0ebd2226338d"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.6.0/ele_linux_amd64.tar.gz"
      sha256 "4748c273c3ddb22b23dd075c73e4ceba212f46f4d4f06b9b20d930c635beab04"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
