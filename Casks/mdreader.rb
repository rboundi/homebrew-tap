cask "mdreader" do
  version "1.0.1"
  sha256 "2888f16b6f54fd6e3ee61d36b18a2701738bf112d6022b95aa245a5e0ba35f57"

  url "https://github.com/rboundi/mdreader/releases/download/v#{version}/MDReader-#{version}.zip"
  name "MDReader"
  desc "Lightweight Markdown reader with tabs, dark mode and PDF export"
  homepage "https://github.com/rboundi/mdreader"

  depends_on macos: ">= :ventura"

  app "MDReader.app"
  binary "#{appdir}/MDReader.app/Contents/Resources/mdr"

  zap trash: [
    "~/Library/Caches/io.github.rboundi.mdreader",
    "~/Library/HTTPStorages/io.github.rboundi.mdreader",
    "~/Library/Preferences/io.github.rboundi.mdreader.plist",
    "~/Library/Saved Application State/io.github.rboundi.mdreader.savedState",
    "~/Library/WebKit/io.github.rboundi.mdreader",
  ]
end
