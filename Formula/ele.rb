class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "1.3.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.3.0/ele_darwin_arm64.tar.gz"
      sha256 "1509e77ec66b6fa0ecf901e7d3378e3437b7de592d25c49cd3481c0f1a39c964"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.3.0/ele_darwin_amd64.tar.gz"
      sha256 "ad33c7ba791476f018541b2af16399b4b92fd4fe1bbebabdec678fd1aebc1a4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.3.0/ele_linux_arm64.tar.gz"
      sha256 "1acfafe11ca22fee6cc6715d2b57fc8b73851ca07f7ac393542b2b0293f18e58"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.3.0/ele_linux_amd64.tar.gz"
      sha256 "979f27e06511c8ac43ca28576a7e01e929f6e6b5c784ddbb192b7e239c038a73"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
