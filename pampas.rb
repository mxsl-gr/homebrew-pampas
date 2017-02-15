class Pampas < Formula
  desc "A "
  homepage "https://www.terminus.io/"
  url "http://terminus-paas.oss.aliyuncs.com/pampas.tar.gz"
  version "0.0.2"
  sha256 "239300293418df34afd4304c6c896f5e88566dab1d6627cf2699cf95dedebe18"

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