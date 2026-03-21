cask "hatto-to" do
  version "0.1.0"
  sha256 "60e8d7b29475bc570a6b709e7c7ada4f6725e8651f9e8aea640b4a02119efedf"

  url "https://github.com/somei-san/hatto-to/releases/download/v#{version}/Hatto-to_0.1.0_universal.dmg"
  name "Hatto-to"
  desc "macOS Stickies-style sticky notes desktop app"
  homepage "https://github.com/somei-san/hatto-to"

  app "Hatto-to.app"

  zap trash: [
    "~/Library/Application Support/com.hatto-to.app",
  ]
end
