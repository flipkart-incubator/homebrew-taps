# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
### https://medium.com/ballerina-techblog/how-to-create-your-own-homebrew-package-or-formula-8dfbf8e001d3

require_relative "./curl_ipv4_download_strategy"
class Jumphost < Formula
  desc "Jumphost tool for Flipkart"
  url "https://storage.googleapis.com/brew-jumphost/jumphost-install-v2.0.tar.gz", :using => CurlIPv4DownloadStrategy
  version "2.0"
  sha256 "6f6380d6a0b06c35e515da912fc1be5fc347d50c76a134c798a1de2071affe21"

  def install
    bin.install "fkst-cli", "setup-jumphost-cli.sh"
    pkgetc.install "fkst-cli.yml"
  end

  def caveats
    "\n\tJumphost has been installed. please run setup-jumphost-cli.sh command to install jumphost related configs\n\n"
  end
end
