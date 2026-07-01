class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.10.0/outbox_darwin_arm64"
      sha256 "d58228bf2f602c428395a5572974f441cb5bbabb91740735aae592fb564a56b0"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.10.0/outbox_darwin_amd64"
      sha256 "7d073243783864bc77d2b76f892a3bfb0a7d80b21ab7b6882881e277a4717e86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.10.0/outbox_linux_arm64"
      sha256 "3d8e043ed68d93b3e7c4d7977a0ca581a1dbef84fd3262a7d9d4bdabbf0433ec"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.10.0/outbox_linux_amd64"
      sha256 "5eab7c264c1f0d199f4702bbe16466b75321eb0746449f7342ae2b0a378f47ea"
    end
  end

  def install
    # The release asset is a bare binary named outbox_<os>_<arch>; install it as `outbox`.
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
