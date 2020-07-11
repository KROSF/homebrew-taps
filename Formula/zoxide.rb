class Zoxide < Formula
  desc "A cd command that learns your habits"
  homepage "https://github.com/ajeetdsouza/zoxide"
  version "0.4.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ajeetdsouza/zoxide/releases/download/v#{version}/zoxide-x86_64-apple-darwin"
    sha256 "1baab023d30af0b5a45ecd7ef065da1156f0a42fb3e572e25a20baa8d944df97"
  elsif OS.linux?
    url "https://github.com/ajeetdsouza/zoxide/releases/download/v#{version}/zoxide-x86_64-unknown-linux-gnu"
    sha256 "2ff278cfdfa86273f71079553af4b52efa976e8803c75a025872fab13d2a227f"
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