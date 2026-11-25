class Ele < Formula
  desc "Cross-session memory for Claude Code"
  homepage "https://github.com/nicolaspearson/claude-ephant"
  version "1.5.0"

  on_macos do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.5.0/ele_darwin_arm64.tar.gz"
      sha256 "a01b41e124fa38147a1d3393c679157b2849106a6eaacd0bd7731b80206e2cec"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.5.0/ele_darwin_amd64.tar.gz"
      sha256 "9902205e02ff1a768eec60088b56cb5939296b98f5cc2b85713c5cc705062c45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.5.0/ele_linux_arm64.tar.gz"
      sha256 "f464106cbfab907b78a2be47c5fe63fc17eee0e02a81fb7d612053c7ebd6c8d0"
    end
    on_intel do
      url "https://github.com/nicolaspearson/claude-ephant/releases/download/v1.5.0/ele_linux_amd64.tar.gz"
      sha256 "3df6798e5091002a276288062adf196d5e6a8a47c0cc7de1dc3fc6779cc96faa"
    end
  end

  def install
    bin.install "ele"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/ele version").strip
  end
end
