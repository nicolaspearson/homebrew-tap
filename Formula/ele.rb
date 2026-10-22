class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.10.0/ele_darwin_arm64.tar.gz"
      sha256 "a57bfe3968dd6b59a15b4398fc7ebf69fbc8e52ff0bc58113841a3c4757b2b45"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.10.0/ele_darwin_amd64.tar.gz"
      sha256 "e1f0e8518ede3f5c5a81c5b6c47a869db23e01cd43d0825b019576826cdba7ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.10.0/ele_linux_arm64.tar.gz"
      sha256 "0ff22177c64873d8a6d3471b827e81982919303a195247ed5671fe0e59460ae6"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.10.0/ele_linux_amd64.tar.gz"
      sha256 "248adfcd1e744f59846b85f6d8760e8094bea1017fed269275c94a861873c534"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
