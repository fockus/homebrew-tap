class FindSkill < Formula
  include Language::Python::Virtualenv

  desc "Multi-agent skill discovery — search 4800+ skills from 14 sources for Claude Code, Codex, OpenCode, Cursor"
  homepage "https://github.com/fockus/claude-skill-find-skill"
  url "https://github.com/fockus/claude-skill-find-skill/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0f59860559572c783316889f005885db4e89e5a01e56777e2114f81553a818df"
  license "MIT"
  head "https://github.com/fockus/claude-skill-find-skill.git", branch: "main"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "find-skill 1.0.0", shell_output("#{bin}/find-skill version")
  end
end
