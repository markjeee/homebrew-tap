class Packtory < Formula
  desc "An easy to use system packaging tool for your Ruby gems"
  homepage "https://gemfury.com"
  url "https://github.com/markjeee/packtory/raw/master/releases/packtory-0.1.1.tar.gz"
  sha256 "56d65f0ac887cf6c2410f8ac4447c28bc82980d9aa38b105f7e5d1b1f576964b"

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
