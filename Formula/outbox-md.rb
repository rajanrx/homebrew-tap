class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/outbox-md-v0.7.0/outbox_darwin_arm64"
      sha256 "b929a5ef868158a9fbf2322306a3b9b49797e71f3e3c58d8b4e25a9030d0c087"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/outbox-md-v0.7.0/outbox_darwin_amd64"
      sha256 "c66c0a4c25c36d9b506427df533519798df216a3ddd3a7b46569674692267931"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/outbox-md-v0.7.0/outbox_linux_arm64"
      sha256 "bf70343144003295d88b129d51b0ef38cde8a9d404bc6ae023e7d44a809a8e68"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/outbox-md-v0.7.0/outbox_linux_amd64"
      sha256 "6d442ababdee8fce845f35407fe4be3a20635714bfd8c9d18a48c8b20737c2bb"
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
