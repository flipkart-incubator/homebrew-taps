# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
### https://medium.com/ballerina-techblog/how-to-create-your-own-homebrew-package-or-formula-8dfbf8e001d3

require_relative "./curl_ipv4_download_strategy"
class Jumphost < Formula
  desc "Jumphost tool for Flipkart"
  url "https://storage.googleapis.com/brew-jumphost/jumphost-install-v2.3.tar.gz", :using => CurlIPv4DownloadStrategy
  version "2.3"
  sha256 "4d8a23da856e4df4de9327ff9bd731e6f4f31992c132e2af532e04e74e24723a"

  def install
    bin.install "fkst-cli", "setup-jumphost-cli.sh"
    pkgetc.install "fkst-cli.yml"
  end

  def caveats
    "\n\tJumphost has been installed. please run setup-jumphost-cli.sh command to install jumphost related configs\n\n"
  end
end

