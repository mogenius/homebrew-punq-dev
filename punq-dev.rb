class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.36/punq-dev-v1.5.0-develop.36-darwin-arm64.tar.gz"
      sha256 "4dfa2fd58e3a78530061f55bc9a70338b7af7b68dabe1fc5233fef127434e02e"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.36/punq-dev-v1.5.0-develop.36-darwin-amd64.tar.gz"
      sha256 "85a15d93f7571d87093f35011ba4a7a611e43db41a8f66796114036f82d1aaee"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.36/punq-dev-v1.5.0-develop.36-linux-amd64.tar.gz"
        sha256 "39ffa602a6a295598d2e3845d80c09b27e94e9892b2a92e71062b8c1ecffa22e"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.36/punq-dev-v1.5.0-develop.36-linux-386.tar.gz"
        sha256 "dcbae33428d5a9aff8d3a0820cc01d516260f86f932fb2100ae08184176d3ad3"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.36/punq-dev-v1.5.0-develop.36-linux-arm64.tar.gz"
        sha256 "e2fe9aa4ebff82fe6b18237d4303c1e8c2ed82483a24e3376ea3ad1eb872a9a9"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.36/punq-dev-v1.5.0-develop.36-linux-arm.tar.gz"
        sha256 "68c6e136c5b6a17ab2626bf189037c0ed4426475f296ec73de093f437e8d2260"
      end
    end
  end
  
  version "1.5.0-develop.36"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.36-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.36-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.36-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.36-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.36-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.36-linux-arm" => "punq-dev"
      end
    end
  end
end
end
