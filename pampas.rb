class Pampas < Formula
  desc "A "
  homepage "https://www.terminus.io/"
  url "http://terminus-paas.oss.aliyuncs.com/dist/pampas/pampas.0.0.1-dev.tar.gz"
  version "0.0.1-dev"
  sha256 "516a541581be42a45530a9cf025c15cd0307c3563c8136c6c3d9609e414252c1"

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