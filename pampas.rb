class Pampas < Formula
  desc "A "
  homepage "https://www.terminus.io/"
  url "http://terminus-paas.oss.aliyuncs.com/dist/pampas/pampas.0.0.1-dev.tar.gz"
  version "0.0.1-dev"
  sha256 "33c30e1a37fee602b66ae631d9d16329c7d3e460139f3ab838b82753b61777a1"

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