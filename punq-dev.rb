class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.24/punq-dev-v1.3.0-develop.24-darwin-arm64.tar.gz"
      sha256 "ab9b17184ddfea625758418084051f4231893c783bbc92b337fc77a665e1b7a6"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.24/punq-dev-v1.3.0-develop.24-darwin-amd64.tar.gz"
      sha256 "c9b76e744fc827efa4279b1be74164abbae75f153d764a4f9cb13dbaa87c7cc8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.24/punq-dev-v1.3.0-develop.24-linux-amd64.tar.gz"
        sha256 "ea276a29742b8495f609d25141f1f0dcef267c40580b09c93268ce9925fd9a5b"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.24/punq-dev-v1.3.0-develop.24-linux-386.tar.gz"
        sha256 "098c7dc040e7710dcbfbb45cc82ee022fdafbbdd75498756dd6831b0fe47de06"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.24/punq-dev-v1.3.0-develop.24-linux-arm64.tar.gz"
        sha256 "a3fc8b654d4138eccbe8b529807f19d85021d8f5f81ca2655640a869d5e7afbe"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.24/punq-dev-v1.3.0-develop.24-linux-arm.tar.gz"
        sha256 "570ff1f78e119d92d7e7e263b94d5668e7f48031dfd41a8d2c50620e9ffc3ff1"
      end
    end
  end
  
  version "1.3.0-develop.24"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.24-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.24-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.24-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.24-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.24-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.24-linux-arm" => "punq-dev"
      end
    end
  end
end
end
