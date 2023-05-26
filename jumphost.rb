# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
### https://medium.com/ballerina-techblog/how-to-create-your-own-homebrew-package-or-formula-8dfbf8e001d3

class Jumphost < Formula
  desc "Jumphost tool for Flipkart"
  url "https://storage.googleapis.com/brew-jumphost/jumphost-install-v1.3.tar.gz"
  version "1.3"
  sha256 "e378e0046ba3fe8cbedc849e788be02afc9d44d16769da28a7d0ed1917f0db3c"
  
  def install
    begin
    # below file check is only there during transition phase to remove existing binary tool.
    if File.file?("/usr/local/bin/fkst-cli")
      exit 
    end 
    #Run installation script to install Jumphost
    system "/bin/bash setup-jumphost-cli.sh fkst-cli-mac.tar.gz"
    bin.install "fkst-cli/fkst-cli"
    bin.install "fkst-cli/wssh"
    rescue SystemExit
      # below command is to force users to uninstall the existing tool 
      abort "\n Please run the command: rm -f /usr/local/bin/fkst-cli \n\n"
    rescue
      puts(" \n If any error, please send the details by running |  brew install jumphost -v \n ")
    end
    begin
      #Below is to make fkst-cli trustworthy in MacOS (https://discussions.apple.com/thread/3145071)
      system "xattr -d com.apple.quarantine #{prefix}/bin/fkst-cli"
    rescue
      puts"\n  Repeated installed \n "
    end
  rescue SystemExit
    puts "\n Please check the above message. \n\n\n"
  end
end