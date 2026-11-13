class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.0.0/ele_darwin_arm64.tar.gz"
      sha256 "6e97f3ad1f05323e0fbe748cc49a2e3e69027a4da08c992b6e449c24872889aa"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.0.0/ele_darwin_amd64.tar.gz"
      sha256 "c6a38bacd59f9adcaac07c7de559630b81bbd472ffa5ddc33c1a2f9f584e4d0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.0.0/ele_linux_arm64.tar.gz"
      sha256 "40974d2303d275e036e5939b8ef29204351d68869b8cba54f4d5c481cdf5e80d"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.0.0/ele_linux_amd64.tar.gz"
      sha256 "294e9c1fda25f1ca3f952d19ff085ab8e0708d182e935af6d9cfd77f0172dac3"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
