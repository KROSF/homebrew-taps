class Goodls < Formula
  desc "This is a CLI tool to download shared files and folders from Google Drive"
  homepage "https://github.com/tanaikech/goodls"
  version "1.2.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/tanaikech/goodls/releases/download/v#{version}/goodls_darwin_amd64"
    sha256 "be6c05935a868b80891557553a90e449dc341472cd6e482fffee3f215657dc7c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tanaikech/goodls/releases/download/v#{version}/goodls_linux_amd64"
      sha256 "e8e53c2403bb06aa72973396693f5b91e2b1cf38802672849664e6b793c70d24"
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tanaikech/goodls/releases/download/v#{version}/goodls_linux_armv8"
        sha256 "582d24f09267da11c06818b388b40dfb4bee87532925fad44a2af39fac24689d"
      else
        url "https://github.com/tanaikech/goodls/releases/download/v#{version}/goodls_linux_armv7"
        sha256 "5dd24e9324dac348e0f79a53c390966769d9e223bca3757eced44a97114cd396"
      end
    end
  end

  def install
    system "mv #{buildpath}/goodls_* #{buildpath}/goodls"
    bin.install "goodls"
  end
end