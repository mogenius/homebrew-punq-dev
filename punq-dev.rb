class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.21/punq-dev-v1.5.0-develop.21-darwin-arm64.tar.gz"
      sha256 "9a6d9b29820cb4c6ab904530b2158abd6cc19938786ba0a7b485323367e4610c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.21/punq-dev-v1.5.0-develop.21-darwin-amd64.tar.gz"
      sha256 "12d8dee391c7cdc4fb3e7a5d4136d7116c0c732b627d6405b096618736e3d277"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.21/punq-dev-v1.5.0-develop.21-linux-amd64.tar.gz"
        sha256 "bdf51be8d004fcc5865accf65842b55cbf75ddc0b962ba8828598cbddddf372d"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.21/punq-dev-v1.5.0-develop.21-linux-386.tar.gz"
        sha256 "f53ffe8e728059de0628ddb0e403b0a575c1b0f5a514039c946d1b1c53656014"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.21/punq-dev-v1.5.0-develop.21-linux-arm64.tar.gz"
        sha256 "f044b166b9235c59637b907e90c8f0821eb892a4a2b8c3893210dc69842ca150"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.21/punq-dev-v1.5.0-develop.21-linux-arm.tar.gz"
        sha256 "dddb9bfa700318705863bfef8473de25b3b63a49431b1826af24a2d0c31e8672"
      end
    end
  end
  
  version "1.5.0-develop.21"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.21-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.21-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.21-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.21-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.21-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.21-linux-arm" => "punq-dev"
      end
    end
  end
end
end
