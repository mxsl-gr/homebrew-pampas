class Pampas < Formula
  desc "A "
  homepage "https://www.terminus.io/"
  url "http://terminus-paas.oss.aliyuncs.com/pampas.tar.gz"
  version "0.0.3"
  sha256 "29ad47bc1ad490e6495b62e8155973befc0b00e9ab6eb05aa985dc55c12ddff2"

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