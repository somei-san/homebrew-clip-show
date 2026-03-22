cask "hattotto" do
  version "0.1.3"
  sha256 "7dadfc6b8440fa170348ad00df29f678a2f50e5f4597df90408c1c724a8d3ee2"

  url "https://github.com/somei-san/hattotto/releases/download/v#{version}/Hattotto_0.1.0_universal.dmg"
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
