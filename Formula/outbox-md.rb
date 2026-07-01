class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.10.1/outbox_darwin_arm64"
      sha256 "067a659cd2bbf60ca55f29d4336259afeace2dd342d1e45677642b8c63bf37c5"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.10.1/outbox_darwin_amd64"
      sha256 "cc47e4f993ae9244ffc334ef2488968e9f373edee1bdb46c7ec10ddd95e3145f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.10.1/outbox_linux_arm64"
      sha256 "9ef4cf1d881ee6797128374c5fd6e02013ba54c585c346cabb283b2ba6940bc6"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.10.1/outbox_linux_amd64"
      sha256 "05cefec14db076fd5718453256c1a334fbfb00f8a525926c4db1893455adb03f"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
