class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.5.0/ele_darwin_arm64.tar.gz"
      sha256 "878b21335b6c39d4a67240f8d3e1203a4e87d280e9131f16cb2034d5a1f414e7"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.5.0/ele_darwin_amd64.tar.gz"
      sha256 "4088aa94e6f80fdad207d30c372c799f24f6abb613c12022f967ba1411d28c70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.5.0/ele_linux_arm64.tar.gz"
      sha256 "470dffdcf3a4f212de749cbcc0ffcf4c38f5c7d505506abf1de3d6a7fbb004e0"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.5.0/ele_linux_amd64.tar.gz"
      sha256 "e7d424e078f79847035fa4820d0f02df353e9d7b447222ca866794cdab444688"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
