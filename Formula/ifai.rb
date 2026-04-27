# typed: strict
# frozen_string_literal: true

# IfAI CLI v0.4.4 Homebrew Formula
# 生成时间: 2026-04-27
# 修复: Windows 编译错误

class Ifai < Formula
  desc "AI 驱动的命令行代码编辑助手 — 工业级 TUI 体验"
  homepage "https://github.com/peterfei/ifai"
  version "0.4.4"
  license "MIT"

  url "https://github.com/peterfei/ifai/releases/download/v0.4.4/ifai-x86_64-apple-darwin.gz"
  sha256 "8f441ed0d61656ae6c8f183c041daf2024e542d8fd7bad86d7573b76803cbd2b"

  def install
    bin.install "ifai"
  end

  test do
    system "#{bin}/ifai", "--version"
  end
end
