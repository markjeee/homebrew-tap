class Gemfury < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"
  url "https://github.com/markjeee/gemfury/raw/brew-package/releases/gemfury-0.8.0.tar.gz"
  sha256 "2980fd815eca0e89057bb9c2dfa1baa7e9822d4d82544bea48e719db7abcf31e"

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
