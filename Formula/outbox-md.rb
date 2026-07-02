class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.16.0/outbox_darwin_arm64"
      sha256 "b882d79b033baee4b15446df0fb861e6619b371968d384a1b2f4467e6a4436d6"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.16.0/outbox_darwin_amd64"
      sha256 "eaf690ed39689f95c2e524f24717b533c70f80d1a83f0e64482b13bf8b154f3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.16.0/outbox_linux_arm64"
      sha256 "8bd7f944b1cd26b0a054aac2a7527b63c148a35c2dd2a6ab47889b1e484c62c8"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.16.0/outbox_linux_amd64"
      sha256 "25f7c11f85e1785767f99a2694891af22be915dcc645472b1373c904a698f325"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
