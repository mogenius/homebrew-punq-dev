class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.9-dev/punq-dev-v1.3.0-develop.9-dev-darwin-arm64.tar.gz"
      sha256 "eee2547490d5c51d96788503bea020b6f8a8f9de2f21fdae63bf1a0ea0c08cc0"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.9-dev/punq-dev-v1.3.0-develop.9-dev-darwin-amd64.tar.gz"
      sha256 "4a5475f4c57d01759d347f151a6090bab00f5d685be1030d20023a8ab8269942"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.9-dev/punq-dev-v1.3.0-develop.9-dev-linux-amd64.tar.gz"
        sha256 "5bc6909cb71fed7b78aa6fae8fc67b1a3245ac45100c25add3a3f42e75e93228"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.9-dev/punq-dev-v1.3.0-develop.9-dev-linux-386.tar.gz"
        sha256 "f4b16b04b32d86cb7ec613ee4e3b4b3de93edd1923c8bb4172ab5c206bec46c7"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.9-dev/punq-dev-v1.3.0-develop.9-dev-linux-arm64.tar.gz"
        sha256 "d05c77c936a10846c0c7f86e3bf1a423b9e4145174aea7b9230584261d5a26a2"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.9-dev/punq-dev-v1.3.0-develop.9-dev-linux-arm.tar.gz"
        sha256 "2bdafb42555edd5c7fecbe38ef0b90c8bef04b97c76c769a9706da3f9e34bd32"
      end
    end
  end
  
  version "1.3.0-develop.9-dev"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.9-dev-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.9-dev-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.9-dev-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.9-dev-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.9-dev-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.9-dev-linux-arm" => "punq-dev"
      end
    end
  end
end
end
