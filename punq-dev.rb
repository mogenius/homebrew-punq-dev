class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.25/punq-dev-v1.5.0-develop.25-darwin-arm64.tar.gz"
      sha256 "581e7606fa9f023158eeaae0a972ef7e24bb2aa14fc6966114317978d226edc6"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.25/punq-dev-v1.5.0-develop.25-darwin-amd64.tar.gz"
      sha256 "ca7ba6e926eee01e0287bb0e773c303d699457fe55cd498a00ab46a31f51c6d2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.25/punq-dev-v1.5.0-develop.25-linux-amd64.tar.gz"
        sha256 "1b34ae0f4150348182d8c830acd601ca1c63f749f5339d1586ed97428c024f42"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.25/punq-dev-v1.5.0-develop.25-linux-386.tar.gz"
        sha256 "3677aa8433dc6ce23898b89d722a25584a6a2818690dfe2cd11e67dcf4bd7466"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.25/punq-dev-v1.5.0-develop.25-linux-arm64.tar.gz"
        sha256 "30fd23daeec1275efe70f220468cfbcf571e06ad39e68196fb6bd4aba1e10972"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.25/punq-dev-v1.5.0-develop.25-linux-arm.tar.gz"
        sha256 "16c9d85632855f69e1f7711680004b7bf599959ebf7728e470636a31ee8b7543"
      end
    end
  end
  
  version "1.5.0-develop.25"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.25-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.25-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.25-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.25-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.25-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.25-linux-arm" => "punq-dev"
      end
    end
  end
end
end
