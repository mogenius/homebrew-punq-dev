class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.32/punq-dev-v1.5.0-develop.32-darwin-arm64.tar.gz"
      sha256 "b5cc3197a6c5cdaf06ff6a6bb51f138b1bfe3b35be375c9fbbd8fe41d6cb4b42"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.32/punq-dev-v1.5.0-develop.32-darwin-amd64.tar.gz"
      sha256 "fae4a61195b29f6145c4c58b4fe42fca1ad85cab01e3a035438757a20d2af434"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.32/punq-dev-v1.5.0-develop.32-linux-amd64.tar.gz"
        sha256 "093c907ec384ca712431560dbe5959e8a4cebe58cdfee196057b6a0b5ad17adf"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.32/punq-dev-v1.5.0-develop.32-linux-386.tar.gz"
        sha256 "bf34fc4cacd75afd11a9bd9b8d4c151767d7fded3db6ccd7a614edbbb78604fe"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.32/punq-dev-v1.5.0-develop.32-linux-arm64.tar.gz"
        sha256 "49277a616b2db24c1f0a069771dc2269c79867e7a43a02d0b27dd0077202689d"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.32/punq-dev-v1.5.0-develop.32-linux-arm.tar.gz"
        sha256 "43e00fbfc7f26156c9c079e6e419b781c916054ffb60c97504af04943f266e0c"
      end
    end
  end
  
  version "1.5.0-develop.32"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.32-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.32-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.32-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.32-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.32-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.32-linux-arm" => "punq-dev"
      end
    end
  end
end
end
