cask "hattotto" do
  version "0.1.4"
  sha256 "03ac82f1871e17c7725d5ad10d6490617a0e671f2cd1f43bc4d6598cda651a80"

  url "https://github.com/somei-san/hattotto/releases/download/v#{version}/Hattotto_0.1.4_universal.dmg"
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
