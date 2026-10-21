class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.4.0/ele_darwin_arm64.tar.gz"
      sha256 "8162b5c3d6abab90930561211cbe2ea2719f9885239bbe1f917fad3d1e1193e8"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.4.0/ele_darwin_amd64.tar.gz"
      sha256 "4f5864ac95d55e2506eef6ab700fb606ff503d7aa749e239316707bbd7098e85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.4.0/ele_linux_arm64.tar.gz"
      sha256 "835665b87ade061ba45400db158ef573b81e89e03c7aea522362e210a9059ce9"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.4.0/ele_linux_amd64.tar.gz"
      sha256 "c3113a57664fd3721365129a3912db4b24e3cb82c3abec20cb58eecafef2878c"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
