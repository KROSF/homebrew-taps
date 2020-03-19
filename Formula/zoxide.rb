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
    sha256 "75c9e39aba583b91ec50ede3a6cba45748eec58ceb8fe09fccba467487843a0a"
  end

  def install
    system "mv #{buildpath}/*zoxide* #{buildpath}/zoxide"
    bin.install "zoxide"
  end

  def caveats; <<~EOS
    Adding zoxide to your shell
    see https://github.com/ajeetdsouza/zoxide#step-2-adding-zoxide-to-your-shell
  EOS
end