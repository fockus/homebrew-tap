class MemoryBank < Formula
  include Language::Python::Virtualenv

  desc "Long-term project memory for AI coding agents (Claude Code, Cursor, etc.)"
  homepage "https://github.com/fockus/skill-memory-bank"
  # url/sha256 updated after each release (brew bump-formula-pr or manual)
  url "https://files.pythonhosted.org/packages/b7/a7/34fe30d1f21eadb614b583bc3dc0f8790f9cf00f43bc3ff803f8a69fdf99/memory_bank_skill-5.4.1.tar.gz"
  sha256 "2f8e706b549f6aaa49be72d6815c7dca26e239f1bd636d81e0cc41e69a3a52b9"
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
