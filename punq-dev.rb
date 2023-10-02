class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.13-dev/punq-dev-v1.3.0-develop.13-dev-darwin-arm64.tar.gz"
      sha256 "4b23a8e8efd14dec11f5d462972517ed2d1f052551f3c203e8151e9b0b4bda8f"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.13-dev/punq-dev-v1.3.0-develop.13-dev-darwin-amd64.tar.gz"
      sha256 "08ca39d3536a48970b6cd6f59b956848f7c9f15b5e1ad011a4c0bd91763f82fa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.13-dev/punq-dev-v1.3.0-develop.13-dev-linux-amd64.tar.gz"
        sha256 "489a9ceb47ddb98d51ae1070cf9c57dfc8d593ade25526fde2de326116e48525"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.13-dev/punq-dev-v1.3.0-develop.13-dev-linux-386.tar.gz"
        sha256 "bff6fa36d8ae35951425ee881e12ec091db4c07872ebb77dbbc35ffe0bf377d0"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.13-dev/punq-dev-v1.3.0-develop.13-dev-linux-arm64.tar.gz"
        sha256 "22a3c88f3b3443c81a606139363b540c01d61ad35ccef4e460a68125c3a61a22"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.13-dev/punq-dev-v1.3.0-develop.13-dev-linux-arm.tar.gz"
        sha256 "b79867c36e626214beb60e11397acc172f269bc284d6eceb166b2c831a73cc85"
      end
    end
  end
  
  version "1.3.0-develop.13-dev"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.13-dev-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.13-dev-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.13-dev-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.13-dev-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.13-dev-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.13-dev-linux-arm" => "punq-dev"
      end
    end
  end
end
end
