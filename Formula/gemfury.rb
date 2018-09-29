class Gemfury < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"
  url "https://github.com/markjeee/gemfury/raw/brew-package/releases/gemfury-0.8.0.tar.gz"
  sha256 "82ccb2033cc6b826da064c6e2656a87b997c584584d8f8cd8fc2d7d2157e121b"

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
