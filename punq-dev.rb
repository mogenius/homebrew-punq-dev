class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.27/punq-dev-v1.3.0-develop.27-darwin-arm64.tar.gz"
      sha256 "d105595d91f27474534b551690bdadd977977c1e3ed0407eb2faf4fb1002adcb"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.27/punq-dev-v1.3.0-develop.27-darwin-amd64.tar.gz"
      sha256 "88a85037f21da26abc478a61008251807f651bc04af3bf95de2791e3adf020c2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.27/punq-dev-v1.3.0-develop.27-linux-amd64.tar.gz"
        sha256 "d76756a2027138a8209a0cd05a3ade002b17dcf160ebb6fe00afa8e31267b902"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.27/punq-dev-v1.3.0-develop.27-linux-386.tar.gz"
        sha256 "33f00de9efba4dc0137d3b384d712d858a440f20d24ff45ddacde70882503ec9"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.27/punq-dev-v1.3.0-develop.27-linux-arm64.tar.gz"
        sha256 "d87154c7ae2b85ab8bf35e78967c89a1ef275a5d882447457e3713247e83b1f7"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.27/punq-dev-v1.3.0-develop.27-linux-arm.tar.gz"
        sha256 "b333fdd84338f3600540d9f0195af62e89af8f7272d2a1bff032efcbfb41ff10"
      end
    end
  end
  
  version "1.3.0-develop.27"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.27-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.27-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.27-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.27-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.27-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.27-linux-arm" => "punq-dev"
      end
    end
  end
end
end
