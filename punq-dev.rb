class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.20/punq-dev-v1.5.0-develop.20-darwin-arm64.tar.gz"
      sha256 "cd42fc5cbc8eed05cc9028ff937888c06a04147659316498007a00b77915dbd9"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.20/punq-dev-v1.5.0-develop.20-darwin-amd64.tar.gz"
      sha256 "c3bcd00157dd9995e97f701942d82053ecc26047e3879b4eb1e6934b71749de3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.20/punq-dev-v1.5.0-develop.20-linux-amd64.tar.gz"
        sha256 "97dd93264ae66d9bfe700a66de5af2c741674bd6522d9a8ac8f569509eb18ea4"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.20/punq-dev-v1.5.0-develop.20-linux-386.tar.gz"
        sha256 "e64a365aec80e3e2cc7d7341fb207656da8c51b10efa9c50ac7c0562b38b348e"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.20/punq-dev-v1.5.0-develop.20-linux-arm64.tar.gz"
        sha256 "1f10a6a308bf75e0da1e49405e332d054ab772965d7cd75664a8cdd1e8733cc8"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.20/punq-dev-v1.5.0-develop.20-linux-arm.tar.gz"
        sha256 "9ec7e18f58739fc50970b3fd7fe0bbda76b96a8de4b03f6fb448b09ee0523672"
      end
    end
  end
  
  version "1.5.0-develop.20"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.20-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.20-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.20-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.20-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.20-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.20-linux-arm" => "punq-dev"
      end
    end
  end
end
end
