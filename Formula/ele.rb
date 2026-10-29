class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.12.0/ele_darwin_arm64.tar.gz"
      sha256 "82f16b535ede18a13c0169eb8d0549edfbe171af5b4e87f1cb844e1c17ba0146"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.12.0/ele_darwin_amd64.tar.gz"
      sha256 "d9e494104d075577e47a62b1e22d08405d82949f38b7db5e69bef543b673ed73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.12.0/ele_linux_arm64.tar.gz"
      sha256 "1e1a2169d12c4505a27de912c39f143d1428db78373e4839c196023829032318"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.12.0/ele_linux_amd64.tar.gz"
      sha256 "198b16d86e36b117a379ae12f545111bed304fcb70f8ab3931581c2c2c351e3c"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
