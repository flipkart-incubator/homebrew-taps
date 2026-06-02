# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
### https://medium.com/ballerina-techblog/how-to-create-your-own-homebrew-package-or-formula-8dfbf8e001d3

require_relative "./curl_ipv4_download_strategy"
class Jumphost < Formula
  desc "Jumphost tool for Flipkart"
  url "https://storage.googleapis.com/brew-jumphost/jumphost-install-v3.4.tar.gz", :using => CurlIPv4DownloadStrategy
  version "3.4"
  sha256 "fa472bf267acd8033dd9612c06edd33dc5bff96fe66ae13ef506d8a762a6b6d6"

  def install
    bin.install "fkst-cli", "setup-jumphost-cli.sh"
    pkgetc.install "fkst-cli.yml"
  end

  def caveats
    "\n\tJumphost has been installed. please run setup-jumphost-cli.sh command to install jumphost related configs\n\n"
  end
end

