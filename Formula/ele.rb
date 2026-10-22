class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.7.0/ele_darwin_arm64.tar.gz"
      sha256 "ed8044c58c6d4ab8e8422f0691c0f96bbdb6ebe378fc8c7347b14af826f0defa"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.7.0/ele_darwin_amd64.tar.gz"
      sha256 "c21cad2e91ba524a50c274997dbc4d797cb65ce70bdbe3fd71ce2b6b98d88080"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.7.0/ele_linux_arm64.tar.gz"
      sha256 "0bab2ceaf7ecf113e9e86bb69d194a6999b22a6fe9f6e87f0748153f18b9c741"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.7.0/ele_linux_amd64.tar.gz"
      sha256 "2ee2358facfd2396b6bc3f62e3b0fb0104d1ca518f2823375230ce2fcfd9d452"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
