class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.2/punq-dev-v1.5.0-develop.2-darwin-arm64.tar.gz"
      sha256 "34ca8c6315bafb9d2525e20ada6b0c266a6921275f3060215870a7df9bd1524e"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.2/punq-dev-v1.5.0-develop.2-darwin-amd64.tar.gz"
      sha256 "f5dcc648a589787de9517e98776a90c5fd786eefbc9639a344ffc99840bdcc41"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.2/punq-dev-v1.5.0-develop.2-linux-amd64.tar.gz"
        sha256 "fde8985851fdc67427795177399009f13b3dc93fd1d990ad5437c49762e3146c"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.2/punq-dev-v1.5.0-develop.2-linux-386.tar.gz"
        sha256 "4cc9075950e44d31d7bba1edee1952b67ec6379aaa0d4e4c90c5df973c2a3652"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.2/punq-dev-v1.5.0-develop.2-linux-arm64.tar.gz"
        sha256 "589881e6d5f4f9893336fe99d2837146f3566850e4114f911d371b7cfbad760d"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.2/punq-dev-v1.5.0-develop.2-linux-arm.tar.gz"
        sha256 "9bf1cb1482e674aa729a12248739c61593c803bafca1aa0ffa1b3caa4b329867"
      end
    end
  end
  
  version "1.5.0-develop.2"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.2-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.2-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.2-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.2-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.2-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.2-linux-arm" => "punq-dev"
      end
    end
  end
end
end
