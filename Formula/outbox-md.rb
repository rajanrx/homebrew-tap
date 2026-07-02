class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.17.0/outbox_darwin_arm64"
      sha256 "c500353550f97c59dfe08535ac3a56b0e6ecf741056d8295d167dafa5e5f773d"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.17.0/outbox_darwin_amd64"
      sha256 "2dfd35312c9df4c7c771dd6105ae41bad83a1d6e31e314eed88e8f65c81a0e81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.17.0/outbox_linux_arm64"
      sha256 "49195809b94d435080a71393147cdccdd1bcf3ca2cdbdbcc663e2c4572b6aae0"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.17.0/outbox_linux_amd64"
      sha256 "96706aa7b6082a320fc8b29b1d8df913040a83b12d134ab04320f30c996a2292"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
