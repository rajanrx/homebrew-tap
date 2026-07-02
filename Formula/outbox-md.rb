class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.14.0/outbox_darwin_arm64"
      sha256 "704805ccf87c95bd7d91cf569a7ba509eca0808b1a539b71192ae54c5265f038"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.14.0/outbox_darwin_amd64"
      sha256 "d8c604289afbc5072e97e894b993855d1e2800ac1edfcd6a788f7e994796bb40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.14.0/outbox_linux_arm64"
      sha256 "8bde66d2a271f7e1fdad43ceecc8eb832e037dcce38697335b8e090ef96230d1"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.14.0/outbox_linux_amd64"
      sha256 "6d1565357b1b60e0277381bd9b9d14c4deed2ada42876d0d8c797395500905e5"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
