class Pampas < Formula
  desc "A "
  homepage "https://www.terminus.io/"
  url "http://terminus-paas.oss.aliyuncs.com/pampas.tar.gz"
  version "0.0.2"
  sha256 "909c8e39fbfd92f5912433e07b659183ccc6a6cc5230268975567428f29702d7"

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