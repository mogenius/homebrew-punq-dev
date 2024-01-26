class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.49/punq-dev-v1.5.0-develop.49-darwin-arm64.tar.gz"
      sha256 "ecfdf0fa4faaf2a2973c2256d76c849df07fc4d774cc495b15e0dd7c165bad3d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.49/punq-dev-v1.5.0-develop.49-darwin-amd64.tar.gz"
      sha256 "50e6d60f765ae865c9c0af92a6c6d33c888ea3806d0e4bad188f82fcd9d73020"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.49/punq-dev-v1.5.0-develop.49-linux-amd64.tar.gz"
        sha256 "81591c99d9b95863391605c85aada7ec685924539b6699daf0ada7317a263958"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.49/punq-dev-v1.5.0-develop.49-linux-386.tar.gz"
        sha256 "2b44792d3de2052b866fe3b72670b235f99dc6e9ae4ec12ffa558e41cc139682"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.49/punq-dev-v1.5.0-develop.49-linux-arm64.tar.gz"
        sha256 "b7acb367eef1f6646090ce5550760a6cee51a5732cb8a241cf35829cb9cdf599"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.49/punq-dev-v1.5.0-develop.49-linux-arm.tar.gz"
        sha256 "337b3015816b36f80b3aa26d1a077087ff52c8288a968aedf12b58824b2dbc10"
      end
    end
  end
  
  version "1.5.0-develop.49"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.49-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.49-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.49-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.49-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.49-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.49-linux-arm" => "punq-dev"
      end
    end
  end
end
end
