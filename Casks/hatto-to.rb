cask "hatto-to" do
  version "0.1.0"
  sha256 "a093a4f21d5984197db53a14d953947984aa79582e3fd2b42ca1c8c997d276e7"

  url "https://github.com/somei-san/hatto-to/releases/download/v#{version}/Hatto-to_0.1.0_universal.dmg"
  name "Hatto-to"
  desc "macOS Stickies-style sticky notes desktop app"
  homepage "https://github.com/somei-san/hatto-to"

  app "Hatto-to.app"

  zap trash: [
    "~/Library/Application Support/com.hatto-to.app",
  ]
end
