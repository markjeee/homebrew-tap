class Ronn < Formula
  desc "the opposite of roff"
  homepage "http://rtomayko.github.com/ronn/"
  url "https://files.nlevel.io/ronn-0.7.3.tar.gz"
  sha256 "1bc21a2a24cabb59fc0e3448036d1ad4d629c4b6b1fc4d819d53282c503c80d4"

  def package_name
    "ronn"
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
