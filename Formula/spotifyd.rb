class Spotifyd < Formula
  desc "A cd command that learns your habits"
  homepage "https://github.com/Spotifyd/spotifyd"
  version "0.2.24"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/Spotifyd/spotifyd/releases/download/v#{version}/spotifyd-macos-full.tar.gz"
    sha256 "93b0d8e5d5ea4549fbdf5ec468a790ca28609cff876f2d09251e46a9ae323afa"
  elsif OS.linux?
    url "https://github.com/Spotifyd/spotifyd/releases/download/v#{version}/spotifyd-linux-full.tar.gz"
    sha256 "a3d01b7d74e49fa5c67946b9648f5b9c44de8290196b1858667503d8d53aa9e5"
  end

  depends_on "dbus"
  depends_on "portaudio"

  plist_options :manual => "spotifyd"

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
            <string>#{opt_bin}/spotifyd</string>
            <string>--config-path=/users/#{ENV["USER"]}/.config/spotifyd/spotifyd.conf</string>
            <string>--no-daemon</string>
          </array>
          <key>UserName</key>
          <string>#{ENV["USER"]}</string>
          <key>KeepAlive</key>
          <true/>
          <key>ThrottleInterval</key>
          <integer>30</integer>
        </dict>
      </plist>
    EOS
  end

  def install
    bin.install "spotifyd"
  end

  test do
    system "#{bin}/spotifyd", "--version"
  end
end