cask "jotter" do
  # version + sha256 are kept current automatically by the `tap.yml` workflow in
  # the byurhannurula/jotter repo on each published release. The values below are
  # placeholders until the first release runs — installing before then will fail
  # the checksum check, which is expected.
  version "0.3.1"
  sha256 "6c4476d7480f0f438e7705ba8169786d76e50bdf3f50be6aff1c84b5e0cca22d"

  url "https://github.com/byurhannurula/jotter/releases/download/v#{version}/Jotter_#{version}_universal.dmg"
  name "Jotter"
  desc "A fast, minimal notepad with an autosaved drafts store"
  homepage "https://github.com/byurhannurula/jotter"

  # Jotter self-updates via the Tauri updater, so Homebrew defers version
  # management to the app. (Not notarized — first launch needs a Gatekeeper bypass.)
  auto_updates true

  app "Jotter.app"

  zap trash: [
    "~/Library/Application Support/com.byrhn.jotter",
    "~/Library/Preferences/com.byrhn.jotter.plist",
    "~/Library/Saved Application State/com.byrhn.jotter.savedState",
  ]
end
