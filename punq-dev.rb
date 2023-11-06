class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.17/punq-dev-v1.5.0-develop.17-darwin-arm64.tar.gz"
      sha256 "c15d49ca04cdcfaa3040af6e5014e1013500f9ff381e3e58dc4acc211b5fc740"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.17/punq-dev-v1.5.0-develop.17-darwin-amd64.tar.gz"
      sha256 "e43a17a138d77e4e3138bed2a25a78271a84da3d449bf77b2f2079cf604ec5d3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.17/punq-dev-v1.5.0-develop.17-linux-amd64.tar.gz"
        sha256 "338822f590ae2a4758328c3e5de48d4baa2c7d8c3bc8967097c61e1a13f254d0"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.17/punq-dev-v1.5.0-develop.17-linux-386.tar.gz"
        sha256 "9820aa8e68872e6506a89107ea1d1d347ca2ec383f81bfcb597bd41808b8e457"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.17/punq-dev-v1.5.0-develop.17-linux-arm64.tar.gz"
        sha256 "caa0a9bae3b5dfc5cc8f16f98c51186c4dcaf83a645f321493ccf4347b6ffeca"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.17/punq-dev-v1.5.0-develop.17-linux-arm.tar.gz"
        sha256 "bb46ff999d2d58690be33dd5f6ab6b3ed030042b5d63bd70a9f45eb48abed5ca"
      end
    end
  end
  
  version "1.5.0-develop.17"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.17-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.17-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.17-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.17-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.17-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.17-linux-arm" => "punq-dev"
      end
    end
  end
end
end
