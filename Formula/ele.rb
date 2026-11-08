class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "0.14.1"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.14.1/ele_darwin_arm64.tar.gz"
      sha256 "6f38c9f0743c15932507fe9b4a1d88a554ea90f5316c2210510d784432d39378"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.14.1/ele_darwin_amd64.tar.gz"
      sha256 "22ed73649aa232cf51a5a52236f221fcbf9af1096eb2952ee5050e11b32ca210"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.14.1/ele_linux_arm64.tar.gz"
      sha256 "5662ca99f5d12ef4f90caec466739aa5050ff04328cf964f212a9cd385058d1b"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.14.1/ele_linux_amd64.tar.gz"
      sha256 "50e697de928569605faf1fc351fa8fce8921018a24925280f7bdcba905b2821a"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
