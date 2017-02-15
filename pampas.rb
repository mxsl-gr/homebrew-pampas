class Pampas < Formula
  desc "A "
  homepage "https://www.terminus.io/"
  url "http://terminus-paas.oss.aliyuncs.com/pampas.tar.gz"
  version "0.0.3"
  sha256 "8824d0babf1a77c66d05921535c3323fcbe31350dd7b096e92e6947be78fe5f6"

  def install
    libexec.install Dir["*"]

    Pathname.glob("#{libexec}/bin/*") do |file|
      next if file.directory?
      basename = file.basename
      (bin/basename).write_env_script file
    end
  end

  def post_install
    # (HOMEBREW_PREFIX/"bin").install_symlink bin/"python2.6"
  end

  test do
    system "#{bin}/pampas", "version"
  end

end