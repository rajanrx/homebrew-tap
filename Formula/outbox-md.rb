class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.13.0/outbox_darwin_arm64"
      sha256 "03ca0df10e5e7fb3dca417fd6bc6afc7dab41ede73af6dec8742335ab3bce1e3"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.13.0/outbox_darwin_amd64"
      sha256 "7552b2a4aeec445f658ebd3e0afd0cfc8ec54f0bf3fad0220159c4fc7b36a2bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.13.0/outbox_linux_arm64"
      sha256 "00a43e3d2fd048082e3111e368466306219d5ae2361574045bcfce2d3e6abcf2"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.13.0/outbox_linux_amd64"
      sha256 "c873c776c74817cd0cfc24135800d039e6fdd9de6cbdc3f7a4dfecc80e30f24c"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
