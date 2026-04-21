class FindSkill < Formula
  include Language::Python::Virtualenv

  desc "Search 4800+ AI skills for Claude Code, Codex, OpenCode, Cursor"
  homepage "https://github.com/fockus/claude-skill-find-skill"
  url "https://files.pythonhosted.org/packages/8d/04/3dd26ebd9a9b5993b28fb932fcf205d1eec2bf7bd042c910be1e0b94d7ab/find_skill-1.0.1.tar.gz"
  sha256 "396dca4d5f6c51b61fe8eded048b321a9f4a15dc0aea0067684cb892379360de"
  license "MIT"
  head "https://github.com/fockus/claude-skill-find-skill.git", branch: "main"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "find-skill 1.0.1", shell_output("#{bin}/find-skill version")
  end
end
