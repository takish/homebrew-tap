# typed: false
# frozen_string_literal: true

class GitTrainer < Formula
  desc "TUI game to learn Git/GitHub basics in a safe simulated environment"
  homepage "https://github.com/takish/git-trainer"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/takish/git-trainer/releases/download/v0.1.0/git-trainer-darwin-amd64.tar.gz"
      sha256 "038c8c054406d8c3bcd7bee53225615274ab4269bee89aeaf43be8ec8c013ae0"

      def install
        bin.install "git-trainer-darwin-amd64" => "git-trainer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/takish/git-trainer/releases/download/v0.1.0/git-trainer-darwin-arm64.tar.gz"
      sha256 "484bc4b29906b7d0b684402cd2f9a5988b5b828c3ec380d9f756c76bb4d6fd1a"

      def install
        bin.install "git-trainer-darwin-arm64" => "git-trainer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/takish/git-trainer/releases/download/v0.1.0/git-trainer-linux-amd64.tar.gz"
      sha256 "85dcb73158d87889d2493fb55927fa7289056bded508233c1630921d0756a2ce"

      def install
        bin.install "git-trainer-linux-amd64" => "git-trainer"
      end
    end
  end

  test do
    assert_match "git-trainer", shell_output("#{bin}/git-trainer --version")
  end
end
