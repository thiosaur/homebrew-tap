cask "crackattack" do
  version "2.0.0-beta.3"
  sha256 "ca08c3ef1412eda9973f20f8d8ba1581eae9a3371fdfdc7a118b9ff183423376"

  url "https://github.com/thiosaur/crackattack/releases/download/v#{version}/crackattack-#{version}-macos-arm64-installer.dmg"
  name "Crack Attack!"
  desc "Puzzle game: swap blocks, chain clears, bury your opponent under garbage"
  homepage "https://thiosaur.github.io/crackattack/"

  # Betas are published as normal releases: keep the pre-release suffix of the tag.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-[\w.]+)?)$/i)
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Crack Attack.app"

  zap trash: "~/Library/Application Support/crack-attack"

  caveats <<~EOS
    Crack Attack! is not signed by Apple, so macOS blocks it the first time.
    Open it once, then go to System Settings > Privacy & Security and click
    "Open Anyway" (macOS 14 and earlier: right-click the app and choose Open).
    Or, from a terminal:
      xattr -dr com.apple.quarantine "#{appdir}/Crack Attack.app"
  EOS
end
