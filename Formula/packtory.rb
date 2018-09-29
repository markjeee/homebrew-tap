class Packtory < Formula
  desc "An easy to use system packaging tool for your Ruby gems"
  homepage "https://gemfury.com"
  url "https://github.com/markjeee/packtory/raw/master/releases/packtory-0.1.1.tar.gz"
  sha256 "ad3c96c8dc37131fec03e69a6546aa985f38116ef4414be9ac0cb43028b6804e"

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
