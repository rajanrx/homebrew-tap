class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.13.1/outbox_darwin_arm64"
      sha256 "63fbf12765d1999cedff5576ba782f75f47f94aca156714ff5158fd8abae5ee9"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.13.1/outbox_darwin_amd64"
      sha256 "e82116b30fcd6c1ea4c48ce2197a71e3da13233e48a99853f2fbbdfc4986f932"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.13.1/outbox_linux_arm64"
      sha256 "a78dc72c85e9a5de62f9d565ff85e80d6930377613efe6502d88fcd21f8252a9"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.13.1/outbox_linux_amd64"
      sha256 "82455014d9548515d5498a0a4d0fced8dbd4a898bf8c15781745035a5c7db620"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
