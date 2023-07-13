# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Falu < Formula
  desc "Falu CLI"
  homepage "https://falu.io"
  license "MIT"
  version "1.9.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/faluapp/falu-cli/releases/download/1.9.0/falu-1.9.0-linux-arm64.tar.gz"
      sha256 "9ae7f2a73a96eead09cb325fb4392677952f1b6194255d3bfd0f5c51905abea8"
    end

    if Hardware::CPU.intel?
      url "https://github.com/faluapp/falu-cli/releases/download/1.9.0/falu-1.9.0-linux-x64.tar.gz"
      sha256 "d7badc0de173503d6ffdc60efc2f36bacafe69f65afeb5eb8c64c8a1c55fa4a1"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/faluapp/falu-cli/releases/download/1.9.0/falu-1.9.0-osx-arm64.tar.gz"
      sha256 "6c25451b6e3eb16344290635ff7909abded3e909490683d0c25b88aa51693392"
    end

    if Hardware::CPU.intel?
      url "https://github.com/faluapp/falu-cli/releases/download/1.9.0/falu-1.9.0-osx-x64.tar.gz"
      sha256 "671e03dd454f271573b27d90ae8c61bfc5b0ecc68f9ddb65a6cbc5f6b342448b"
    end
  end

  def install
    bin.install "falu"
  end

  test do
    system "#{bin}/falu", "--version"
  end

  def caveats; <<~EOS
    ❤ Thanks for installing the Falu CLI! If this is your first time using the CLI, be sure to run `falu login` first.
  EOS
  end
end