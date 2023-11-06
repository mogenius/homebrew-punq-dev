class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.9/punq-dev-v1.5.0-develop.9-darwin-arm64.tar.gz"
      sha256 "d7e17a0d1c282416d9488d3f981a96de692b1d4089955dd4950974f306e8b4de"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.9/punq-dev-v1.5.0-develop.9-darwin-amd64.tar.gz"
      sha256 "a6cd416254aaa925e1f1fa975fd090ef1fb2095ae703b6f33d7b9d361e4c9fd6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.9/punq-dev-v1.5.0-develop.9-linux-amd64.tar.gz"
        sha256 "7bf0b59fea96906f03998b60990c54c45b402326dbc8504a7fdedcc08c29e6b0"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.9/punq-dev-v1.5.0-develop.9-linux-386.tar.gz"
        sha256 "177d64a8ae97c07f1b7adc3b4131886862e793ef989c7c035e0d6a907cb1546e"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.9/punq-dev-v1.5.0-develop.9-linux-arm64.tar.gz"
        sha256 "df1f04ac1c38fad6d7258d9eb1d987de1aed3a1529512c1deb56f60266e910ca"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.9/punq-dev-v1.5.0-develop.9-linux-arm.tar.gz"
        sha256 "3293e321376f53e3af10cd80b8fe33894803a8a5b355ee63306e68e25de116f1"
      end
    end
  end
  
  version "1.5.0-develop.9"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.9-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.9-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.9-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.9-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.9-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.9-linux-arm" => "punq-dev"
      end
    end
  end
end
end
