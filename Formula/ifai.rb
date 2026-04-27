# typed: strict
# frozen_string_literal: true

# IfAI CLI v0.4.4 Homebrew Formula
# 生成时间: 2026-04-27

class Ifai < Formula
  desc "AI 驱动的命令行代码编辑助手 — 工业级 TUI 体验"
  homepage "https://github.com/peterfei/ifai"
  version "0.4.4"
  license "MIT"

  url "https://github.com/peterfei/ifai/releases/download/v0.4.4/ifai-x86_64-apple-darwin.gz"
  sha256 "ccd36fdb75f625100ca9d8e3619b76ed08f7fed9d1fce93daf6a577047bcc921"

  def install
    bin.install "ifai"
  end

  test do
    system "#{bin}/ifai", "--version"
  end
end
