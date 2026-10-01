cask "neutrino" do
  version "1.0.0"
  sha256 "098a4e906a5e8bb5ec690a8d4a60485a13e3593e6a43764257976959e1cfe821"

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
