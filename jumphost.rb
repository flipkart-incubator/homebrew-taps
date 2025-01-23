# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
### https://medium.com/ballerina-techblog/how-to-create-your-own-homebrew-package-or-formula-8dfbf8e001d3

require_relative "./curl_ipv4_download_strategy"
class Jumphost < Formula
  desc "Jumphost tool for Flipkart"
  url "https://storage.googleapis.com/brew-jumphost/jumphost-install-v2.2.tar.gz", :using => CurlIPv4DownloadStrategy
  version "2.2"
  sha256 "d630f27d4dab4e158fe9f3a4f35725832b62a181038a29733f4682beb4d56680"

  def install
    bin.install "fkst-cli", "setup-jumphost-cli.sh"
    pkgetc.install "fkst-cli.yml"
  end

  def caveats
    "\n\tJumphost has been installed. please run setup-jumphost-cli.sh command to install jumphost related configs\n\n"
  end
end
