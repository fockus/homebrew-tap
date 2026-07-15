class MemoryBank < Formula
  include Language::Python::Virtualenv

  desc "Long-term project memory for AI coding agents (Claude Code, Cursor, etc.)"
  homepage "https://github.com/fockus/skill-memory-bank"
  # url/sha256 updated after each release (brew bump-formula-pr or manual)
  url "https://files.pythonhosted.org/packages/f3/00/f95226fa0b09602e8d336ce2e187f726a0748029b142cbabffed18e29d8f/memory_bank_skill-5.3.1.tar.gz"
  sha256 "c376748fceb3d5b225e90991b2d3b94b3ccadb927e762b7b48297e86ef7c7d42"
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
