class MemoryBank < Formula
  include Language::Python::Virtualenv

  desc "Long-term project memory for AI coding agents (Claude Code, Cursor, etc.)"
  homepage "https://github.com/fockus/skill-memory-bank"
  # url/sha256 updated after each release (brew bump-formula-pr or manual)
  url "https://files.pythonhosted.org/packages/e1/f9/a136d026e7b487f0f49a8d58bf0a3ecdd58f97b7112dd40f427b4c4d995b/memory_bank_skill-5.0.0.tar.gz"
  sha256 "a0c7d007fcb36ba0f9f65868b1c187825b87be89731e28fb6df1f9db4121476d"
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
