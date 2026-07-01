class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.11.0/outbox_darwin_arm64"
      sha256 "d7d721359c0b94028422335987473bbfd43d40118e89cd3db9311ecb32005fd4"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.11.0/outbox_darwin_amd64"
      sha256 "e511482001313e74c5b89ea0ef9cafdd49d3d7dbfe25efc62ad5abc971a320bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.11.0/outbox_linux_arm64"
      sha256 "b6779c9653419b6d3663d74c5974c84e90d4ce47179c887527377964cf0ee69c"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.11.0/outbox_linux_amd64"
      sha256 "67fc5f2fe3764f9a1f07bb38349c884ef5b9016a1fad6a16536ea654180fe774"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
