cask "neutrino" do
  version "1.0.3"
  sha256 "81f839a40ae36e4e6e3c220fe5ff9dc4d935b68edb4e7e505f2327461bced188"

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
