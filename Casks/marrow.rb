cask "marrow" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "9890692a2804d9f0d306aaaf70c11f15ed0815b6da760174b4ccf391a9548a19",
         intel: "fb9a86d0014a8b9c2b2f5c75479aecb7e28d4e0d03602dd77807b4f9b7e5b7eb"

  url "https://github.com/utabk/marrow/releases/download/v#{version}/Marrow-#{version}-mac-#{arch}.dmg"
  name "Marrow"
  desc "Desktop GUI for the REA reverse engineering MCP"
  homepage "https://github.com/utabk/marrow"

  depends_on macos: :monterey

  app "Marrow.app"

  zap trash: "~/Library/Application Support/Marrow"

  caveats <<~EOS
    Marrow needs REA, the engine it runs:
      npm install --global rea-agents
    Help > Contents in Marrow checks for REA, Ghidra and Java.
  EOS
end
