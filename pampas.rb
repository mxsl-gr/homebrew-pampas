class Pampas < Formula
  desc "A "
  homepage "https://www.terminus.io/"
  url "http://terminus-paas.oss.aliyuncs.com/dist/pampas/pampas.0.1.0.tar.gz"
  version "0.1.0"
  sha256 "6e4910457f4a8931e0e27ef97517280b2a72c9d9560f0e59622a242c287f2fe9"

  depends_on "maven"
  depends_on "git"
  depends_on "node"
 # depends_on "docker" => :recommended

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    ENV["PAMPAS_TEMPLATES"] = HOMEBREW_PREFIX/"pampas_templates/"
    ENV["BUILDPACK_PATH"] = HOMEBREW_PREFIX/"buildpacks/"
  end

  test do
    system "#{bin}/pampas", "version"
  end

end