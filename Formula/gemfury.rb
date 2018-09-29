class Gemfury < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"
  url "https://github.com/markjeee/gemfury/raw/brew-package/releases/gemfury-0.8.0.tar.gz"
  sha256 "85cc3efdb34246f9eba11603081c26dba91cedaa3ec030fd25ce354543b00b66"

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
