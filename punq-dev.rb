class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.1/punq-dev-v1.5.0-develop.1-darwin-arm64.tar.gz"
      sha256 "8208c818522384fdf2141ab7702b6ebc7d38f71ebfd7d473cf6976df155d9ef3"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.1/punq-dev-v1.5.0-develop.1-darwin-amd64.tar.gz"
      sha256 "2ff7807b1682bd096bf898764e8fdf4b99fe6c091adb9fc4c886483292fa9969"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.1/punq-dev-v1.5.0-develop.1-linux-amd64.tar.gz"
        sha256 "25924ccc2c1158318b9e84d3a2b2bdb97b3ef0de06acd8ac6126e4b4b4d0728d"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.1/punq-dev-v1.5.0-develop.1-linux-386.tar.gz"
        sha256 "b07133cec3dc95fd054a240967b8aa42e76f9046bd96fed89c5d5154294f47b0"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.1/punq-dev-v1.5.0-develop.1-linux-arm64.tar.gz"
        sha256 "c29db235031a073709fac94cd0433adabfcbfcfa16a66d8b8779203e61378851"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.1/punq-dev-v1.5.0-develop.1-linux-arm.tar.gz"
        sha256 "2e70db2daf4c368f811aa452d5befda1a562b81eb47405ae932f0ebbe4dd7a08"
      end
    end
  end
  
  version "1.5.0-develop.1"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.1-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.1-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.1-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.1-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.1-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.1-linux-arm" => "punq-dev"
      end
    end
  end
end
end
