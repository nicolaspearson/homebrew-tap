class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.3.0/ele_darwin_arm64.tar.gz"
      sha256 "a3d8472c43b7b640d2cb0c51da7b467d01d42c7e15a165eb2e6baa21bf76debb"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.3.0/ele_darwin_amd64.tar.gz"
      sha256 "83ba3651afa244986eae7ee222479303ab8444485ad0c46b98d1aef8ea019fa3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.3.0/ele_linux_arm64.tar.gz"
      sha256 "32b8ab647e8c43a0aa790a8e41050aa99907f7590456ba8363a359c2cc17a557"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.3.0/ele_linux_amd64.tar.gz"
      sha256 "fea4746f23c302df43464dd489909b0ca0821b866a907244de0e35aaaf599070"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
