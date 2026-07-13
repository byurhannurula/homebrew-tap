cask "jotter" do
  # version + sha256 are kept current automatically by the `tap.yml` workflow in
  # the byurhannurula/jotter repo on each published release. The values below are
  # placeholders until the first release runs — installing before then will fail
  # the checksum check, which is expected.
  version "0.2.1"
  sha256 "65f0d0a031f5383bbf0c8400f74f883d5e7b336c6ac68133082b8fe0e286f626"

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
