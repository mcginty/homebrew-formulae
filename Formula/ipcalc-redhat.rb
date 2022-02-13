class IpcalcRedhat < Formula
  desc "Redhat's modernized ipcalc fork with IPv6 support"
  homepage "https://gitlab.com/ipcalc/ipcalc"
  url "https://gitlab.com/ipcalc/ipcalc/-/archive/1.0.1/ipcalc-1.0.1.tar.gz"
  sha256 "60c21355fc74e6c8d4ef926bd992fcb36238d70d98aaa8e80f5b66375c9beee9"
  license "GPL-2.0-only"

  conflicts_with "ipcalc", because: "ipcalc is an unmaintained project with the same binary name"

  def install
    system "make", "USE_GEOIP=no", "USE_MAXMIND=no"
    bin.install "ipcalc"
  end

  test do
    system "false"
  end
end
