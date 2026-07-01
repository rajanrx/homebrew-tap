class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.12.0/outbox_darwin_arm64"
      sha256 "c9f928de576621207792708d4ea06f5644d887817c53ee9f524d1c91ee11d42b"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.12.0/outbox_darwin_amd64"
      sha256 "426bae87813b5818b80460c915514e6dcbba5733e6c7c5c1e9a16af1225012a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.12.0/outbox_linux_arm64"
      sha256 "89e3bf23c861f6d62e5b830bc1c970e3d4499633f6cc19c027ba79319c468732"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.12.0/outbox_linux_amd64"
      sha256 "c8cb4820a5fc51cb8de66bdc06cf022d456a08144ede3509dae208251fde102f"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
