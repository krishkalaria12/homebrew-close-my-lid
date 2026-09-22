cask "close-my-lid" do
  version "0.5.0"
  sha256 "9876e9ae276611067c3c83223c40177a7ad2af6bdbac900b0973a3604fe5a749"

  url "https://github.com/krishkalaria12/close-my-lid/releases/download/v#{version}/Close-My-Lid-v#{version}-macOS.zip"
  name "Close My Lid"
  desc "Menu bar utility that keeps the computer awake with the lid closed"
  homepage "https://github.com/krishkalaria12/close-my-lid"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Close My Lid.app"

  zap trash: "~/Library/Preferences/app.closemylid.CloseMyLid.plist"
end
