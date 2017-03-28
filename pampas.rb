class Pampas < Formula
  desc "A "
  homepage "https://www.terminus.io/"
  url "http://terminus-paas.oss.aliyuncs.com/dist/pampas/pampas.0.1.0.tar.gz"
  version "0.1.0"
  sha256 "d394aa9fb64537acdabf8264b484be8bceb4285b777e1e9d3ed65a0bc509c93d"

  depends_on "maven"
  depends_on "git"
  depends_on "node"
 # depends_on "docker" => :recommended

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    prefix.install "lib/scripts/install-mac.sh"
    ENV["PAMPAS_TEMPLATES"] = HOMEBREW_PREFIX/"pampas-templates/"
    ENV["BUILDPACK_PATH"] = HOMEBREW_PREFIX/"buildpacks/"
  end

  def caveats
    <<-EOS.undent
      run shell script (need root):
        #{prefix}/scripts/install-mac.sh
    EOS
  end

  test do
    system "#{bin}/pampas", "version"
  end

end