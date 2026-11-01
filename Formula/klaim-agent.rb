class KlaimAgent < Formula
  desc "Read-only KLAIM Amsterdam catalog, agent resources and sandbox CLI"
  homepage "https://klaimamsterdam.com/developers"
  url "https://github.com/Ecomvaulttt/homebrew-klaim/releases/download/v1.0.0/klaim-agent-cli-1.0.0.tgz"
  sha256 "fc8df19adf887681f1890d8a8177e634960b5b415c944d1c6c6845b957005cc6"
  license "MIT"

  depends_on "node"

  def install
    libexec.install "bin", "package.json", "README.md", "LICENSE"
    bin.install_symlink libexec/"bin/klaim.mjs" => "klaim-agent"
  end

  test do
    assert_match "Usage: klaim-agent", shell_output("#{bin}/klaim-agent 2>&1", 1)
    assert_match "Provide a product handle", shell_output("#{bin}/klaim-agent product INVALID_HANDLE 2>&1", 1)
  end
end
