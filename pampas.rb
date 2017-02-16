class Pampas < Formula
  desc "A "
  homepage "https://www.terminus.io/"
  url "http://terminus-paas.oss.aliyuncs.com/dist/pampas/pampas.0.0.1-dev.tar.gz"
  version "0.0.1-dev"
  sha256 "0155632f5f191a9630a8eeb12b7e6d173b1ae189a5adc21452aa20ba1868c269"

  depends_on "maven"
  depends_on "git"
  depends_on "node"
  depends_on "docker" => :recommended

  def install
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/pampas", "version"
  end

end