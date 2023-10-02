class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.7-dev/punq-dev-v1.3.0-develop.7-dev-darwin-arm64.tar.gz"
      sha256 "ecb3c9d715ee87c253368d4e57251066da3040902b5b17acf0e5a5b7c3497fbb"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.7-dev/punq-dev-v1.3.0-develop.7-dev-darwin-amd64.tar.gz"
      sha256 "aee196fcf55d0105a44f70125edd63a0a05e86edfa961184d0ec7e0ad5476733"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.7-dev/punq-dev-v1.3.0-develop.7-dev-linux-amd64.tar.gz"
        sha256 "691a83cb1ba8ffe47793b2382e35f957edb980a02011fa98ec90c6eba17fb02e"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.7-dev/punq-dev-v1.3.0-develop.7-dev-linux-386.tar.gz"
        sha256 "eeb7c16f5f40cd2173e6f88f33b3851b83017de37cd4a7dab741448d0ab3696d"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.7-dev/punq-dev-v1.3.0-develop.7-dev-linux-arm64.tar.gz"
        sha256 "247813624b7d362f29c1a94034b6d12c6d34da6cd2541170110c4e95086db003"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.7-dev/punq-dev-v1.3.0-develop.7-dev-linux-arm.tar.gz"
        sha256 "a3676f0afd78bceb1207d67de9e19d9ed71b72ec2e9b85dea96b0218aac209f0"
      end
    end
  end
  
  version "1.3.0-develop.7-dev"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.7-dev-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.7-dev-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.7-dev-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.7-dev-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.7-dev-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.7-dev-linux-arm" => "punq-dev"
      end
    end
  end
end
end
