cask "jotter" do
  # version + sha256 are kept current automatically by the `tap.yml` workflow in
  # the byurhannurula/jotter repo on each published release. The values below are
  # placeholders until the first release runs — installing before then will fail
  # the checksum check, which is expected.
  version "0.3.0"
  sha256 "ad99543247beb0651d2f18bff0a8fdeb66c435c79d19447805413e7a57dd0e6a"

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
