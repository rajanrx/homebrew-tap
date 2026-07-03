class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.19.0/outbox_darwin_arm64"
      sha256 "d08ca0f1d74d4b5af3e46e902716466b1bf87e5d763ddc1559730e9e7fe59f23"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.19.0/outbox_darwin_amd64"
      sha256 "dfe92fdb776f99539525011a8b5e1a06535427cac7b039ac0f935a9935128684"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.19.0/outbox_linux_arm64"
      sha256 "0a0021922d7328032241ac0ba4dbda175ebee4ae3e6f998c005334e2d8eb982b"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.19.0/outbox_linux_amd64"
      sha256 "28719729cd33713015bdf338b2d0f3e03c78db360ceb10474fa6f5c0a36a18c6"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
