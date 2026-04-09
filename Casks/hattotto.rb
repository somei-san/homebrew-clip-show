cask "hattotto" do
  version "0.1.10"
  sha256 "59441d85b954cd514ea9bd6f50f194afc3741df76a96b2a10c69eec68e428901"

  url "https://github.com/somei-san/hattotto/releases/download/v#{version}/Hattotto_0.1.10_universal.dmg"
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
