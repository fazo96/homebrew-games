require "formula"

class Cataclysm < Formula
  homepage "http://cataclysmdda.com/"
  url "http://assets.cataclysmdda.com/downloads/mac_binaries/cataclysm-mac-curses-0.A.tgz"
  sha1 "243f559be5b3b4e4780bfae9a8a9b12a6e0ead3a"
  version "0.A"

  def install
    (bin+'cataclysm').write <<-EOS.undent
      #!/bin/sh
      cd #{libexec}
      exec #{libexec}/cataclysm
    EOS
    libexec.install Dir['*']
  end
end
