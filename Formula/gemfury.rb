class Gemfury < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"
  url "https://github.com/markjeee/gemfury/raw/brew-package/releases/gemfury-0.8.0.tar.gz"
  sha256 "22e9878ff4e2aef1e7fce524eb9c515bcf161f68796c97f5781a0dcbc3fa3413"

  def package_name
    "gemfury"
  end

  def install
    prefix.install Dir["*"]

    install_script = "%s/%s/packtory_tools/after_install_script" % [ prefix, package_name ]
    system(install_script) if File.exist?(install_script)

    true
  end

  test do
    true
  end
end
