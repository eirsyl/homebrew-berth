cask "berth" do
  version "0.0.5"
  sha256 "f9a1cccaa4c76de414a1cf4a5518dac41352fcf4e13b0079af8a2c2b5c82663c"

  url "https://github.com/eirsyl/homebrew-berth/releases/download/v#{version}/Berth-#{version}-arm64.dmg"
  name "Berth"
  desc "Run multiple CLI coding agents in parallel, each in its own git worktree"
  homepage "https://github.com/eirsyl/berth"

  depends_on arch: :arm64

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Berth.app"
  # The same binary the app spawns, so the CLI and the app stay peers. Replaces the manual
  # `sudo ln -sf` step from the README.
  binary "#{appdir}/Berth.app/Contents/Resources/berth"

  uninstall quit: "no.sylliaas.berth"

  # ~/.berth is the user's slot state and config, not a cache, so it is only removed on `zap`.
  zap trash: [
    "~/.berth",
    "~/Library/Application Support/Berth",
    "~/Library/Preferences/no.sylliaas.berth.plist",
    "~/Library/Saved Application State/no.sylliaas.berth.savedState",
  ]
end
