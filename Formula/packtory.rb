class Packtory < Formula
  desc "An easy to use system packaging tool for your Ruby gems"
  homepage "https://gemfury.com"
  url "https://github.com/markjeee/packtory/raw/master/releases/packtory-0.1.1.tar.gz"
  sha256 "0b0eb34ef662817bf6e02c139461842095d2852a7d5bfa75cfb5d4575d278287"

  def package_name
    "packtory"
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
