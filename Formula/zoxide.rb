class Zoxide < Formula
  desc "A cd command that learns your habits"
  homepage "https://github.com/ajeetdsouza/zoxide"
  version "0.4.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ajeetdsouza/zoxide/releases/download/v#{version}/zoxide-x86_64-apple-darwin"
    sha256 "52f1d54caf54077ea152ff2eb222447967d99313ebbcbaa994f77ddba43eae0c"
  elsif OS.linux?
    url "https://github.com/ajeetdsouza/zoxide/releases/download/v#{version}/zoxide-x86_64-unknown-linux-gnu"
    sha256 "98c7792c28d08bbaa29d630d809684bc8fc4020aadeed7010d3e69dd88e7d764"
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