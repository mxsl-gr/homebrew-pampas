class Pampas < Formula
  desc "A "
  homepage "https://www.terminus.io/"
  url "http://terminus-paas.oss.aliyuncs.com/pampas.tar.gz"
  version "0.0.1"
  sha256 "2cefe05c181d1d65df070586436e1f8324ec42d1ab660c2f792a934550a8ac4a"

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