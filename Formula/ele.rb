class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.8.0/ele_darwin_arm64.tar.gz"
      sha256 "1330e884ef67413a8d1eed8b0bdf2a0027f200b80ce8980381f81a4512983ff8"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.8.0/ele_darwin_amd64.tar.gz"
      sha256 "e74ca9d4f2b6e543e394621ca21d38adb5100cb116b4fb958c724971a5dd98db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.8.0/ele_linux_arm64.tar.gz"
      sha256 "42cb6433410bc3edf23146c60c7c92869302bb2282b476bd5427bf2514d3e61c"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v0.8.0/ele_linux_amd64.tar.gz"
      sha256 "35c6cb670ed7471f80bcf44eccdfaf0a4160607e06d9d2a257dc39fe5108f1b0"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
