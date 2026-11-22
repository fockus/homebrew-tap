class MemoryBank < Formula
  include Language::Python::Virtualenv

  desc "Long-term project memory for AI coding agents (Claude Code, Cursor, etc.)"
  homepage "https://github.com/fockus/skill-memory-bank"
  # url/sha256 updated after each release (brew bump-formula-pr or manual)
  url "https://files.pythonhosted.org/packages/7a/db/4fbfc677fe3bf2d62004b529e873512f9ab9644ab90663ac2e10cac5978a/memory_bank_skill-5.4.2.tar.gz"
  sha256 "5775f0f8146dfd2e9d3e2cf9431aa48be45a1a552ccaf9fc1237b11c005112c1"
  license "MIT"
  head "https://github.com/fockus/skill-memory-bank.git", branch: "main"

  depends_on "jq"
  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    # Smoke: CLI prints version and resolves its bundle
    assert_match "memory-bank-skill", shell_output("#{bin}/memory-bank version")
    assert_match "Bundle root:", shell_output("#{bin}/memory-bank doctor")
  end
end
