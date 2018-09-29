class Packtory < Formula
  desc "An easy to use system packaging tool for your Ruby gems"
  homepage "https://gemfury.com"
  url "https://github.com/markjeee/packtory/raw/master/releases/packtory-0.1.1.tar.gz"
  sha256 "bed6c9e9279b2e13c0c809c81ff7ed2155f7969b43c9faa30ca20efc99dd12bd"

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
