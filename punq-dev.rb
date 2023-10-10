class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.1-develop.1/punq-dev-v1.4.1-develop.1-darwin-arm64.tar.gz"
      sha256 "25ae990b09672d95f843c73ef04c7bd8e840aaf05aaf609a7eff31b6d7684802"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.1-develop.1/punq-dev-v1.4.1-develop.1-darwin-amd64.tar.gz"
      sha256 "cf4d1c6ab70f8194c3e9e195aa70e706a1fa494299d3e86d211fef4946446587"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.1-develop.1/punq-dev-v1.4.1-develop.1-linux-amd64.tar.gz"
        sha256 "faeb2f8d8796ac539b4c4c96a357641171d54cbefdcc687869ad5a733af9c101"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.1-develop.1/punq-dev-v1.4.1-develop.1-linux-386.tar.gz"
        sha256 "5fd178b358987718de98e181971eff7c893d5e3bc422ce000a514e8aa90f8c8e"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.1-develop.1/punq-dev-v1.4.1-develop.1-linux-arm64.tar.gz"
        sha256 "6111f868d94d22806f9e955254472dd2759d48b5a74b05dab16f315266a492f8"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.1-develop.1/punq-dev-v1.4.1-develop.1-linux-arm.tar.gz"
        sha256 "044015eddb1a68ee06a1e962c5e0bab92341d7b42aa10ff67f1e738a2c0c56e7"
      end
    end
  end
  
  version "1.4.1-develop.1"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.1-develop.1-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.1-develop.1-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.1-develop.1-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.1-develop.1-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.1-develop.1-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.1-develop.1-linux-arm" => "punq-dev"
      end
    end
  end
end
end
