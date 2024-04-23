class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.65/punq-dev-v1.5.0-develop.65-darwin-arm64.tar.gz"
      sha256 "7655aa134002c01c55415a795997e98f37a0a44a3e8d9487fb8530b2c94209a6"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.65/punq-dev-v1.5.0-develop.65-darwin-amd64.tar.gz"
      sha256 "85bb9d6d7c13b9ad9a28cb21b408886bd323f272f3e1f3ce806889423f982510"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.65/punq-dev-v1.5.0-develop.65-linux-amd64.tar.gz"
        sha256 "9b267ecce16a7f1707e9e2ba89cf6c577533611640c4f5c10bcad1ff20870694"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.65/punq-dev-v1.5.0-develop.65-linux-386.tar.gz"
        sha256 "a673f53dca986245dc94ea814dd40c448aa3ad3df380e3cb9340900c7eaf82de"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.65/punq-dev-v1.5.0-develop.65-linux-arm64.tar.gz"
        sha256 "5020ea861c44a9ed7c0ba957367d2270c84c2c9b539874482faaac9450fbf939"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.65/punq-dev-v1.5.0-develop.65-linux-arm.tar.gz"
        sha256 "ceb6df27ed71c89ebaf01043665cec87268e4f9eea9ffc35454fbed4bf295fe8"
      end
    end
  end
  
  version "1.5.0-develop.65"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.65-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.65-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.65-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.65-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.65-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.65-linux-arm" => "punq-dev"
      end
    end
  end
end
end
