class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.18.0/outbox_darwin_arm64"
      sha256 "5427bcf70dffbe879f08956fa25a0afe55e3d79d11cfe942a0f7c3204ce41244"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.18.0/outbox_darwin_amd64"
      sha256 "03ef65e9b010160cbe4f6ee746c16ad963d2dabb982c1e02ec03928ceadc7ae9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.18.0/outbox_linux_arm64"
      sha256 "41b881bb56fe81a51612f37829a0a79449bd345bfdde254767d3d7fdc5d6eb8b"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.18.0/outbox_linux_amd64"
      sha256 "a73ca1706e8c9ad555a9d67e6558bce15e6cb21bb2c2a4dc834aea4fa435d978"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
