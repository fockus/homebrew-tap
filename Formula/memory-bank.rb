class MemoryBank < Formula
  include Language::Python::Virtualenv

  desc "Long-term project memory for AI coding agents (Claude Code, Cursor, etc.)"
  homepage "https://github.com/fockus/skill-memory-bank"
  # url/sha256 updated after each release (brew bump-formula-pr or manual)
  url "https://files.pythonhosted.org/packages/60/2c/1e11051a3544a7074aeac28cb9737818cb34941e28bc9aa2214c842f7b00/memory_bank_skill-5.4.0.tar.gz"
  sha256 "c4edc5796f1eec41180eb18f01095316736d78e2c8e53930ee0e8edbb05c1742"
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
