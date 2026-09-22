class CloseMyLid < Formula
  desc "Menu bar app that keeps a Mac awake with the lid closed"
  homepage "https://github.com/krishkalaria12/close-my-lid"
  url "https://github.com/krishkalaria12/close-my-lid/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "a339e08cd05c465ab954c6f864f8d12693b21a9521a1ba26b5f8da828f549c33"
  license "MIT"

  depends_on macos: :sonoma

  def install
    system "swift", "build",
      "--package-path", "apps/macos",
      "--configuration", "release",
      "--product", "CloseMyLid",
      "--disable-sandbox"
    bin.install "apps/macos/.build/release/CloseMyLid" => "close-my-lid"
    sparkle_framework = buildpath.glob("apps/macos/.build/*-apple-macosx/release/Sparkle.framework").first
    (prefix/"Frameworks").install sparkle_framework
  end

  test do
    assert_match "Close My Lid #{version}", shell_output("#{bin}/close-my-lid --version")
  end
end
