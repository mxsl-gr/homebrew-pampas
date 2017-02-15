class Pampas < Formula
  desc "A "
  homepage "https://www.terminus.io/"
  url "http://terminus-paas.oss.aliyuncs.com/pampas.tar.gz"
  version "0.0.2"
  sha256 "d41c13358cf6c56aff3ab8dddbfd2f8e551db9c061243a1333977b7bc1444b6f"

  def install
    system "ls"
    # system "make install"
  end

  def post_install
    # (HOMEBREW_PREFIX/"bin").install_symlink bin/"python2.6"
  end

  test do
    system "#{bin}/pampas", "version"
  end

end