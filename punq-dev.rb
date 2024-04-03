class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.62/punq-dev-v1.5.0-develop.62-darwin-arm64.tar.gz"
      sha256 "e7f2cb915f9a459b66b2c906b4a94e3de717f1985268a3d95d24815c2acf9ece"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.62/punq-dev-v1.5.0-develop.62-darwin-amd64.tar.gz"
      sha256 "a2c94ab231c9b1407d396f2678fba20e60e3000c9285ed184e42618555dcaf95"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.62/punq-dev-v1.5.0-develop.62-linux-amd64.tar.gz"
        sha256 "5f72cd60090a222df3385230b08d75b100d27647e24e704f686f8da1e5a54eff"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.62/punq-dev-v1.5.0-develop.62-linux-386.tar.gz"
        sha256 "6d697241e6e578a89614f8dd948578ac6a9c689732808c73dcae14b8a1031710"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.62/punq-dev-v1.5.0-develop.62-linux-arm64.tar.gz"
        sha256 "d3ca285eb7c79f00ce2397dbb0d6c39ee4fb1ff8cf23fd365d40ce0d38504ec9"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.62/punq-dev-v1.5.0-develop.62-linux-arm.tar.gz"
        sha256 "5805e61867a2efae872cb37548449452ca161700ec0dcf2ec752e704877375c3"
      end
    end
  end
  
  version "1.5.0-develop.62"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.62-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.62-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.62-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.62-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.62-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.62-linux-arm" => "punq-dev"
      end
    end
  end
end
end
