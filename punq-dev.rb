class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.69/punq-dev-v1.5.0-develop.69-darwin-arm64.tar.gz"
      sha256 "bd3052e653de5a11fba5b5a52121c719a52f34cf468acfbb4ef04a35cc047437"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.69/punq-dev-v1.5.0-develop.69-darwin-amd64.tar.gz"
      sha256 "104f36987aa394a7e46c90b3d11cdfd330b9d1d91389aa0d5b4c5f96eb18af8c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.69/punq-dev-v1.5.0-develop.69-linux-amd64.tar.gz"
        sha256 "f658e5fc241b5a3773ba8eb22f2f89d75d559c2a1bd7b7126149ed9bc3d264d0"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.69/punq-dev-v1.5.0-develop.69-linux-386.tar.gz"
        sha256 "a800aa19395d6c450a2fbce1e49f1f1b01b4fa04ad5c9c56e53216e426ecade1"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.69/punq-dev-v1.5.0-develop.69-linux-arm64.tar.gz"
        sha256 "6738b01376414a8d7b06b610cbf9b88816545f2b10ba7ddba1577013c429ee80"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.69/punq-dev-v1.5.0-develop.69-linux-arm.tar.gz"
        sha256 "bf14ebc430ef7207f95438bbb00170145d8409b82941c5f4def51e6581e958d0"
      end
    end
  end
  
  version "1.5.0-develop.69"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.69-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.69-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.69-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.69-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.69-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.69-linux-arm" => "punq-dev"
      end
    end
  end
end
end
