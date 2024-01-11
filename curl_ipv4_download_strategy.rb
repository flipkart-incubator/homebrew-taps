require "download_strategy"

class CurlIPv4DownloadStrategy < CurlDownloadStrategy

  def _curl_args
    args = super
    args += ["--ipv4"]
    args
  end

end
