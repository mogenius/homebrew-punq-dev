class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.29/punq-dev-v1.5.0-develop.29-darwin-arm64.tar.gz"
      sha256 "6141ed2d82ef65405eae4578f446ef27b3f368ca298aa7b7457f9704ec92f7be"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.29/punq-dev-v1.5.0-develop.29-darwin-amd64.tar.gz"
      sha256 "e977281443db8d6ae529a704f79f14c3d5f6b754435663146b42e5f555aa36b4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.29/punq-dev-v1.5.0-develop.29-linux-amd64.tar.gz"
        sha256 "108dd0523938f0dbc03aa093575d518396b78358fc881070a404a3b3d0c04130"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.29/punq-dev-v1.5.0-develop.29-linux-386.tar.gz"
        sha256 "f2c36fc87876f130d0e88d31138bf3becba06f8ffb4438f110a9718a9976ff0a"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.29/punq-dev-v1.5.0-develop.29-linux-arm64.tar.gz"
        sha256 "c677b855b01e3d70b6c91be378b8b160f6135251872b9731de5e7a7464ede942"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.29/punq-dev-v1.5.0-develop.29-linux-arm.tar.gz"
        sha256 "09e5658739c17f3839eda12823209610b31890064b82289e36b4d914a0d0d82d"
      end
    end
  end
  
  version "1.5.0-develop.29"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.29-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.29-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.29-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.29-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.29-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.29-linux-arm" => "punq-dev"
      end
    end
  end
end
end
