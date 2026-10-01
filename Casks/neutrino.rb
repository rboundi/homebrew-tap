cask "neutrino" do
  version "1.2.0"
  sha256 "836ebef1a3d729e989bf9992626c15142d6bbd6ce18038a3db37f078aa9e101b"

  url "https://github.com/rboundi/neutrino/releases/download/v#{version}/Neutrino-#{version}.zip"
  name "Neutrino"
  desc "Lightweight code editor with tabs and downloadable syntaxes"
  homepage "https://github.com/rboundi/neutrino"

  depends_on macos: :ventura

  app "Neutrino.app"
  binary "#{appdir}/Neutrino.app/Contents/Resources/neutrino"

  zap trash: [
    "~/Library/Application Support/Neutrino",
    "~/Library/Caches/com.movinapp.neutrino.macos",
    "~/Library/HTTPStorages/com.movinapp.neutrino.macos",
    "~/Library/Preferences/com.movinapp.neutrino.macos.plist",
    "~/Library/Saved Application State/com.movinapp.neutrino.macos.savedState",
  ]
end
