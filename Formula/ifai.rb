# typed: strict
# frozen_string_literal: true

# IfAI CLI v0.4.4 Homebrew Formula
# 支持 x86_64 和 aarch64 架构

class Ifai < Formula
  desc "AI 驱动的命令行代码编辑助手 — 工业级 TUI 体验"
  homepage "https://github.com/peterfei/ifai"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/peterfei/ifai/releases/download/v0.4.4/ifai-x86_64-apple-darwin.gz"
      sha256 "8f441ed0d61656ae6c8f183c041daf2024e542d8fd7bad86d7573b76803cbd2b"
    elsif Hardware::CPU.arm?
      url "https://github.com/peterfei/ifai/releases/download/v0.4.4/ifai-aarch64-apple-darwin.gz"
      sha256 "9d8f1de16b6184cf275b2a7a02664e7d873c66c6782fa1f61918937310b77c6e"
    end
  end

  def install
    bin.install "ifai"
  end

  test do
    system "#{bin}/ifai", "--version"
  end
end
