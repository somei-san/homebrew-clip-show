cask "hattotto" do
  version "0.1.5"
  sha256 "7e9e0aa54a6da4e8cd54a9429e74ee9040c92fc13182531a3e4fb0bd701eee7b"

  url "https://github.com/somei-san/hattotto/releases/download/v#{version}/Hattotto_0.1.5_universal.dmg"
  name "Hattotto"
  desc "macOS Stickies-style sticky notes desktop app"
  homepage "https://github.com/somei-san/hattotto"

  app "Hattotto.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Hattotto.app"]
  end

  caveats <<~EOS
    #{token} is not signed with an Apple Developer ID.
    The quarantine attribute has been automatically removed during installation.
  EOS

  zap trash: [
    "~/Library/Application Support/com.hattotto.app",
  ]
end
