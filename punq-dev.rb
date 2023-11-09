class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.24/punq-dev-v1.5.0-develop.24-darwin-arm64.tar.gz"
      sha256 "3adb5082b31912a28cd604044b78f8b43dd9c37bfca500af78098f2056d71956"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.24/punq-dev-v1.5.0-develop.24-darwin-amd64.tar.gz"
      sha256 "5cda8440577a8b57d43450419809a689e3a7977fcd592adb539e95b01fd2c446"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.24/punq-dev-v1.5.0-develop.24-linux-amd64.tar.gz"
        sha256 "2e75eb36122762118981648c0d32aef4e0bccf508f14436777c28caba1d27960"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.24/punq-dev-v1.5.0-develop.24-linux-386.tar.gz"
        sha256 "9d3368811d93e163ce8ef221ef889a2b811cea77e7d354e51572f1018eb00672"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.24/punq-dev-v1.5.0-develop.24-linux-arm64.tar.gz"
        sha256 "3b7750fd7780142c695a0b3f17cf0d68feb7c375b0d0709d23d162f07fb1003b"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.24/punq-dev-v1.5.0-develop.24-linux-arm.tar.gz"
        sha256 "10f2debb41dcfb449ad1af3aad22943034e4d0311d3d643f1d5c694d49e952e0"
      end
    end
  end
  
  version "1.5.0-develop.24"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.24-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.24-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.24-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.24-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.24-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.24-linux-arm" => "punq-dev"
      end
    end
  end
end
end
