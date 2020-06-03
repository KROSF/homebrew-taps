class Mdbook < Formula
  desc "Create book from markdown files. Like Gitbook but implemented in Rust"
  homepage "https://github.com/rust-lang/mdBook"
  version "0.3.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/rust-lang/mdBook/releases/download/v#{version}/mdbook-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "8c11b8c9006dbd213fecdb965d27cc5f2d53666f8e181cdf66179fb78523372e"
  elsif OS.linux?
    url "https://github.com/rust-lang/mdBook/releases/download/v#{version}/mdbook-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9b61fe2476dfd8b8459702966bf2f226f9d6eddc00133adf09e37d30e7eab117"
  end

  def install
    bin.install "mdbook"
  end
  end
end