class PktMonitor < Formula
  desc "Cross-platform packet monitor using libpcap"
  homepage "https://github.com/takish/packet-monitor-pcap"
  url "https://github.com/takish/packet-monitor-pcap/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e366d6280bfc1c350a9ee928f3820577b7c8b848cf96ddb1d03e758cd285dee2"
  license "MIT"

  depends_on "libpcap"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  def caveats
    <<~EOS
      pkt_monitor requires root privileges to capture packets:
        sudo pkt_monitor -d en0
    EOS
  end

  test do
    assert_match "Usage", shell_output("#{bin}/pkt_monitor -h 2>&1", 0)
  end
end
