class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.16/punq-dev-v1.5.0-develop.16-darwin-arm64.tar.gz"
      sha256 "1fea5ac680bb7a43cb3b7421c61161c8cdf8ee39c2418fe3acb0c95314043970"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.16/punq-dev-v1.5.0-develop.16-darwin-amd64.tar.gz"
      sha256 "8eabd0026cce6e5092970f4ce7a0630ac6e81202f525f9488215af34790c8a13"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.16/punq-dev-v1.5.0-develop.16-linux-amd64.tar.gz"
        sha256 "d57c01649500f726913388257562add2b0a5282854c8679a2dbde1f9e096605d"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.16/punq-dev-v1.5.0-develop.16-linux-386.tar.gz"
        sha256 "28a2a3dbdcdc985e65730c4ae3e5064ae2c5bde77f2b4411120ef668a44acb1c"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.16/punq-dev-v1.5.0-develop.16-linux-arm64.tar.gz"
        sha256 "db762d37fe23717eaca1c476db18534027c46b8fc3ea01be86bfd58e522d2c1b"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.16/punq-dev-v1.5.0-develop.16-linux-arm.tar.gz"
        sha256 "8f5c0e3a0ac2d5a724ceedd4d754353c64873c99b2bfbb9ff7c24706a1f261c9"
      end
    end
  end
  
  version "1.5.0-develop.16"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.16-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.16-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.16-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.16-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.16-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.16-linux-arm" => "punq-dev"
      end
    end
  end
end
end
