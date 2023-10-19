class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.1/punq-dev-v1.4.9-develop.1-darwin-arm64.tar.gz"
      sha256 "2970a8963ff3b23bf3d3ad6b3e6cb8ecdf48d81e7fef9acbc60405d95ecc6b98"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.1/punq-dev-v1.4.9-develop.1-darwin-amd64.tar.gz"
      sha256 "3be98d3204ea3a73d6aad351a240855151f6b59221f9c8ff9b4d10e6f37170cb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.1/punq-dev-v1.4.9-develop.1-linux-amd64.tar.gz"
        sha256 "079c647f5204b75650bc7b50b0728892eb196af8ea55224ad2d4f43898cac67a"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.1/punq-dev-v1.4.9-develop.1-linux-386.tar.gz"
        sha256 "0eb823cdaa8569b601f77011130efa67f8bfafce504a686037d0c3b1e66ccd77"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.1/punq-dev-v1.4.9-develop.1-linux-arm64.tar.gz"
        sha256 "999c6ef088f5df1465a7962b7fd1661b93b9e4439b01a9974592c8cd64b4b261"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.1/punq-dev-v1.4.9-develop.1-linux-arm.tar.gz"
        sha256 "3c1d81eab59cecf27b566323e12f30fb8702cb43beebc474e0da04ede506d86d"
      end
    end
  end
  
  version "1.4.9-develop.1"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.9-develop.1-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.9-develop.1-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.9-develop.1-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.9-develop.1-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.9-develop.1-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.9-develop.1-linux-arm" => "punq-dev"
      end
    end
  end
end
end
