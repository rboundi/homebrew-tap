cask "neutrino" do
  version "1.0.2"
  sha256 "f59bb9a45bdb1534bd05a294684c42a7c340ce859b9dc886a29a61de62c2e634"

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
