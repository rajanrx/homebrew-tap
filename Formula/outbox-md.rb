class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.20.0/outbox_darwin_arm64"
      sha256 "5591769aea540f035875c3e68ef96baae2481c957933692e7d48e71e9b7381d1"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.20.0/outbox_darwin_amd64"
      sha256 "149c30d0bd70b59e821a1101c48e85f22cf2c93fa7cc6c890c595cb0fcc50964"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.20.0/outbox_linux_arm64"
      sha256 "0a1d9a1d3d29ac34a430ce3341cc5519cb621568983c28f21a6092d8f09cc8c8"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.20.0/outbox_linux_amd64"
      sha256 "353b7afb9b8f3abeb3632576a63d10a5cd38bb68afb4c6d64eade0a809df73d2"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
