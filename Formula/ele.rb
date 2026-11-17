class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "1.2.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.2.0/ele_darwin_arm64.tar.gz"
      sha256 "92a13b0697a9a4d705ccc3eaf075f1ab133484ec0da0a9a2e07a094758f52db8"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.2.0/ele_darwin_amd64.tar.gz"
      sha256 "519445cc5ff01adc06ede8f87c1cc761f72bbf11952da618c1b655b53f2b9c12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.2.0/ele_linux_arm64.tar.gz"
      sha256 "3f0da15e1e572eb5179952fca1a947227773d9d57354f060411d1cdb49b56d6c"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.2.0/ele_linux_amd64.tar.gz"
      sha256 "d93537e7eed5a332072e7aacf4d62eb2b11c3e3b7eb19ecde0c3f2c111a417ba"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
