class Zoxide < Formula
  desc "A cd command that learns your habits"
  homepage "https://github.com/ajeetdsouza/zoxide"
  version "0.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ajeetdsouza/zoxide/releases/download/v0.2.1/zoxide-x86_64-apple-darwin"
    sha256 "9867717453415b34e5ff71be102c750b42e64916ce10f080fc61f7a8a4731313"
  elsif OS.linux?
    url "https://github.com/ajeetdsouza/zoxide/releases/download/v0.2.1/zoxide-x86_64-unknown-linux-gnu"
  end

  def install
    system "mv #{buildpath}/*zoxide* #{buildpath}/zoxide"
    bin.install "zoxide"
  end
end