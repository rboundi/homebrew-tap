cask "mdreader" do
  version "1.1.1"
  sha256 "74ae31b61e288192fb9b7d21d2731f28a1f3fdd04a42617ed0f77004449ec9dd"

  url "https://github.com/rboundi/mdreader/releases/download/v#{version}/MDReader-#{version}.zip"
  name "MDReader"
  desc "Lightweight Markdown reader with tabs, dark mode and PDF export"
  homepage "https://github.com/rboundi/mdreader"

  depends_on macos: :ventura

  app "MDReader.app"
  binary "#{appdir}/MDReader.app/Contents/Resources/mdr"

  zap trash: [
    "~/Library/Caches/com.movinapp.mdreader.macos",
    "~/Library/HTTPStorages/com.movinapp.mdreader.macos",
    "~/Library/Preferences/com.movinapp.mdreader.macos.plist",
    "~/Library/Saved Application State/com.movinapp.mdreader.macos.savedState",
    "~/Library/WebKit/com.movinapp.mdreader.macos",
    "~/Library/Caches/io.github.rboundi.mdreader",
    "~/Library/HTTPStorages/io.github.rboundi.mdreader",
    "~/Library/Preferences/io.github.rboundi.mdreader.plist",
    "~/Library/Saved Application State/io.github.rboundi.mdreader.savedState",
    "~/Library/WebKit/io.github.rboundi.mdreader",
  ]
end
