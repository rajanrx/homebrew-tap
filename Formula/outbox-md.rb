class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.21.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.21.1/outbox_darwin_arm64"
      sha256 "a8e87e6af3644fb82e7958984840dac80a2bc8636d31093065da8d7751c3ea49"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.21.1/outbox_darwin_amd64"
      sha256 "404150843e15546e70e2560be1660352e89be8536d3bb9c7b0bb00c1a040f980"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.21.1/outbox_linux_arm64"
      sha256 "283a454194a68f61748b4d8ed76efbe55c7717b2610f526cd01d81a5599b4997"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.21.1/outbox_linux_amd64"
      sha256 "3e01a1fbf1e5cd1bea8df0bc143e2487ff90ad42ff52cd432dcbc33b8f6fe3b3"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
