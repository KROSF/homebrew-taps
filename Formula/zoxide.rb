class Zoxide < Formula
  desc "A cd command that learns your habits"
  homepage "https://github.com/ajeetdsouza/zoxide"
  version "0.4.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ajeetdsouza/zoxide/releases/download/v#{version}/zoxide-x86_64-apple-darwin"
    sha256 "3fa9a5b1fd1b475e58146b3b926bf378c3ac46e29a3a2a47dcf66049dbf37dfc"
  elsif OS.linux?
    url "https://github.com/ajeetdsouza/zoxide/releases/download/v#{version}/zoxide-x86_64-unknown-linux-gnu"
    sha256 "7cf5a3e3ee001042de0fd2fc2fb0d316c0d77eca67df9525de4f8a44ea8d4251"
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