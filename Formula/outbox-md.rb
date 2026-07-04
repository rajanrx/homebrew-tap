class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.21.0/outbox_darwin_arm64"
      sha256 "5a64686330eab50becfeae9c09303cecc2719f26b21249d10e0fc4d95fa785d1"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.21.0/outbox_darwin_amd64"
      sha256 "1a08d84ebcd810abee0e76800bab3916c2b9bf3a07025452b4b25321408c24ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.21.0/outbox_linux_arm64"
      sha256 "76ac39d83b22593bd99de6fd6b550bd4a9a4041c1c31ecacbe14ac086d69ad2e"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.21.0/outbox_linux_amd64"
      sha256 "273f43d473e98be0154cfe9c1167ccdfd6103dab17c04630d2838d7da4a91c04"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
