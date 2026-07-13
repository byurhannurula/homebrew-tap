cask "jotter" do
  # version + sha256 are kept current automatically by the `tap.yml` workflow in
  # the byurhannurula/jotter repo on each published release. The values below are
  # placeholders until the first release runs — installing before then will fail
  # the checksum check, which is expected.
  version "0.2.0"
  sha256 "4574d2285760fcd2c90638f86f1b3e0ed72b014f3b75f5109e6ee5c9d84253b9"

  url "https://github.com/byurhannurula/jotter/releases/download/v#{version}/Jotter_#{version}_universal.dmg"
  name "Jotter"
  desc "A fast, minimal notepad with an autosaved drafts store"
  homepage "https://github.com/byurhannurula/jotter"

  # The app is not code-signed / notarized; first launch needs a Gatekeeper
  # bypass. Enable `auto_updates true` only once the in-app Tauri updater ships.

  app "Jotter.app"

  zap trash: [
    "~/Library/Application Support/com.byrhn.jotter",
    "~/Library/Preferences/com.byrhn.jotter.plist",
    "~/Library/Saved Application State/com.byrhn.jotter.savedState",
  ]
end
