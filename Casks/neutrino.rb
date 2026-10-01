cask "neutrino" do
  version "1.1.0"
  sha256 "b8e2f5f83822149772a91b44e09a80c39a1106f821558a8534e93846a64d01ef"

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
