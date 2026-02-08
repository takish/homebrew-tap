class FlappyBirdTui < Formula
  desc "Terminal-based Flappy Bird clone built with Go and Bubble Tea"
  homepage "https://github.com/takish/flappy-bird-tui"
  version "0.2.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/takish/flappy-bird-tui/releases/download/v0.2.0/flappy-bird-tui_0.2.0_darwin_amd64.tar.gz"
    sha256 "6458fc869a9749c6ca0ec3a9196926c24118612ca81d2605470ffadfc5260cc9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/takish/flappy-bird-tui/releases/download/v0.2.0/flappy-bird-tui_0.2.0_linux_arm64.tar.gz"
    sha256 "88f7ca5b6c6488c66dcaed2251a127a4933de2955a7f9e2ab8d10e62d09a9f37"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/takish/flappy-bird-tui/releases/download/v0.2.0/flappy-bird-tui_0.2.0_linux_amd64.tar.gz"
    sha256 "e9d45014144e6685ec1520d37ddc9dcf1aa10418256284f54436c069d6547cca"
  else
    odie "flappy-bird-tui is not available for #{OS.kernel_name} on #{Hardware::CPU.arch}. Supported: macOS (Intel), Linux (Intel/ARM64)"
  end

  def install
    bin.install "flappy-bird-tui"
  end

  test do
    assert_match "flappy-bird-tui version", shell_output("#{bin}/flappy-bird-tui --version")
  end
end
