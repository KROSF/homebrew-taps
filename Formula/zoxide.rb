class Zoxide < Formula
  desc "A cd command that learns your habits"
  homepage "https://github.com/ajeetdsouza/zoxide"
  version "0.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ajeetdsouza/zoxide/releases/download/v#{version}/zoxide-x86_64-apple-darwin"
    sha256 "8fb5df3b8114d61ca83e78cdaa20dac787185d9514237a06b24bfcff8c47a7fa"
  elsif OS.linux?
    url "https://github.com/ajeetdsouza/zoxide/releases/download/v#{version}/zoxide-x86_64-unknown-linux-gnu"
    sha256 "2e5fca4c457ce7eb97b8fe74850aff08518774ad48596c9ac7fa9525b5429a6c"
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
end