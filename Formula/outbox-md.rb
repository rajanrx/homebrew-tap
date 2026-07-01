class OutboxMd < Formula
  desc "Local-first, agent-agnostic review for AI-generated Markdown specs"
  homepage "https://github.com/rajanrx/outbox-md"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.11.1/outbox_darwin_arm64"
      sha256 "380bc89a04c540fda3f9452feae725306c962d2b9b7bfe50234d3e8d80390796"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.11.1/outbox_darwin_amd64"
      sha256 "76eddcd29426e8f8a98c0a583dca90d2a352d87251fcb71ea3598e444f64d347"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.11.1/outbox_linux_arm64"
      sha256 "57984ee12f1d2092b3e0e3d5960232f58c5cc3d1735b0ba88f5211de5bd18583"
    end
    on_intel do
      url "https://github.com/rajanrx/outbox-md/releases/download/v0.11.1/outbox_linux_amd64"
      sha256 "22a5b8c138251335ca4a2f5ddd97dfdb273b72e1d167e975ded83026a650bed1"
    end
  end

  def install
    bin.install Dir["outbox_*"].first => "outbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outbox version")
  end
end
