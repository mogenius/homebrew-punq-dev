class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.3-dev/punq-dev-v1.3.0-develop.3-dev-darwin-arm64.tar.gz"
      sha256 "d67166e2f31b32b5cfd8c7bb6d1c91626a5fa805ae60f817668de9fa58285e3b"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.3-dev/punq-dev-v1.3.0-develop.3-dev-darwin-amd64.tar.gz"
      sha256 "10d9e6dde7aabea3541da4158faa1a92bd2657b96dc69bc71aa9d4af6ea05977"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.3-dev/punq-dev-v1.3.0-develop.3-dev-linux-amd64.tar.gz"
        sha256 "0dc79a31a4e2d8f4e99ad57fb9e21f7eadd47d229fab3741aa4b301e2712c756"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.3-dev/punq-dev-v1.3.0-develop.3-dev-linux-386.tar.gz"
        sha256 "8fe136b8340506ee73d9e686f5b46ad7b47ffb3d42db56d4b8ee0237c27a1402"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.3-dev/punq-dev-v1.3.0-develop.3-dev-linux-arm64.tar.gz"
        sha256 "c6edc958540c5674e34fe45b2994c82a7b6db81cc3797da10e3722450af0b7b6"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.3-dev/punq-dev-v1.3.0-develop.3-dev-linux-arm.tar.gz"
        sha256 "bf6fec577b4e7cf12af6090e14886b0b3b55057ab3f660a0a142f977a5714194"
      end
    end
  end
  
  version "1.3.0-develop.3-dev"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.3-dev-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.3-dev-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.3-dev-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.3-dev-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.3-dev-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.3-dev-linux-arm" => "punq-dev"
      end
    end
  end
end
end
