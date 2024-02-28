class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.58/punq-dev-v1.5.0-develop.58-darwin-arm64.tar.gz"
      sha256 "3312b69ea77912c9f290694e586356117b7a635a47c8d39a69a8c9aec7ebc9d1"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.58/punq-dev-v1.5.0-develop.58-darwin-amd64.tar.gz"
      sha256 "9fa45554568fda0519ba6a8ced8760f54d18b618ca4f58bfff797c0231ad0e37"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.58/punq-dev-v1.5.0-develop.58-linux-amd64.tar.gz"
        sha256 "fd23ab53396f6937412f54fb87a32b67c0e2c4324297053e21efcab9c9fe36ae"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.58/punq-dev-v1.5.0-develop.58-linux-386.tar.gz"
        sha256 "3e423ee01a425273c27692ca356cd17c2dfcb19095d9ab7fcd363cdfd4db8f20"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.58/punq-dev-v1.5.0-develop.58-linux-arm64.tar.gz"
        sha256 "7cabd5f49297611dd157f526ee33e6a30feb211d0e86e1f275a983f2fda7c238"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.58/punq-dev-v1.5.0-develop.58-linux-arm.tar.gz"
        sha256 "57e9696633b96203734c9e09aaf449171f324eafea00adbe2ff8e173677138ac"
      end
    end
  end
  
  version "1.5.0-develop.58"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.58-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.58-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.58-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.58-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.58-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.58-linux-arm" => "punq-dev"
      end
    end
  end
end
end
