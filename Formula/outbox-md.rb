class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.15.0/outbox_darwin_arm64"
      sha256 "c2899c6b26f42580f1d6fb2f6be9d528c83ec350388f9d63e809e11ba4465727"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.15.0/outbox_darwin_amd64"
      sha256 "1200e06d4b737f363bb7169f153d00d7b070d952f68cc57942aedf30b0b0901f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.15.0/outbox_linux_arm64"
      sha256 "214bfb134c9aa53fd9e58a3848bcf1b5d1e410ca822909541151134e6131ee8b"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.15.0/outbox_linux_amd64"
      sha256 "e51ca3b8421f52e8c0be4c2a558547ddc50c219e5c8295917c1f7c6ee77f61e6"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
