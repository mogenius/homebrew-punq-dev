class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.31/punq-dev-v1.5.0-develop.31-darwin-arm64.tar.gz"
      sha256 "caa6b0b11e24e7e74b8ac1e4e230a810301cc8d5b4f5b31b5bc511d792c2a57e"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.31/punq-dev-v1.5.0-develop.31-darwin-amd64.tar.gz"
      sha256 "a7aa898ccc769ca11e1d3a0650c7c476c725986874f2c101723e0a89cb03f82d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.31/punq-dev-v1.5.0-develop.31-linux-amd64.tar.gz"
        sha256 "7853dea468ab58a21f0d2b162071818fd7b23f90f06fccf063d2ef82ec7ff20a"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.31/punq-dev-v1.5.0-develop.31-linux-386.tar.gz"
        sha256 "57a51e6653c5fec9800a8404e203dc746a7ccac30dd231b8b3f400ac703aaf2d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.31/punq-dev-v1.5.0-develop.31-linux-arm64.tar.gz"
        sha256 "ec1d14951c078767df8478d734de5b8660662d9f7bef2fe8193ea1ccad8e2bde"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.31/punq-dev-v1.5.0-develop.31-linux-arm.tar.gz"
        sha256 "457b20785f5f16fce3a3b0e155d8bf7b80307bb12c5b047a3c58de0b04e366c6"
      end
    end
  end
  
  version "1.5.0-develop.31"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.31-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.31-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.31-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.31-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.31-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.31-linux-arm" => "punq-dev"
      end
    end
  end
end
end
