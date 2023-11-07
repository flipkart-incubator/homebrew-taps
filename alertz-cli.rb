class AlertzCli < Formula
    desc "CLI for alertz bulk actions"
    homepage "http://fcp.fkinternal.com/#/docs/alertz/latest/intro.md"
    url "https://drive.google.com/uc?export=download&id=16xNudg6HdCAMfMhUCx_m35BRWkhwExZW"
    version "0.1"
    sha256 "5245e0941f3f0618c16e92cdf2ad782f578e7d15ad5e36d39240c11d178ef705"

    def install
        begin
        #Run installation script to install alertz-cli
        bin.install "alertz-cli"
        rescue SystemExit
          # below command is to force users to uninstall the existing tool 
          abort "\n Please run the command: rm -f /usr/local/bin/alertz-cli \n\n"
        rescue
          puts(" \n If any error, please send the details by running |  brew install alertz-cli -v \n ")
        end
      rescue SystemExit
        puts "\n Please check the above message. \n\n\n"
      end
end
