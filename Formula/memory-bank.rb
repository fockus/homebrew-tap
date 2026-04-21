class MemoryBank < Formula
  include Language::Python::Virtualenv

  desc "Universal long-term project memory for AI coding clients (Claude Code, Cursor, etc.)"
  homepage "https://github.com/fockus/skill-memory-bank"
  # url/sha256 populated by `brew bump-formula-pr` on each release
  url "https://files.pythonhosted.org/packages/5d/dc/6805f64c450da780f36007a07c2a2b88339cab8ed3d76b41f5a9355de269/memory_bank_skill-3.0.0.tar.gz"
  sha256 "477fd569d70aadf687f9f270ddeb7e2c3b5fb6f428fe1c1e9962daf3d0fa081f"
  license "MIT"
  head "https://github.com/fockus/skill-memory-bank.git", branch: "main"

  depends_on "python@3.12"
  depends_on "jq"

  def install
    virtualenv_install_with_resources
  end

  test do
    # Smoke: CLI prints version and resolves its bundle
    assert_match "memory-bank-skill", shell_output("#{bin}/memory-bank version")
    assert_match "Bundle root:", shell_output("#{bin}/memory-bank doctor")
  end
end
