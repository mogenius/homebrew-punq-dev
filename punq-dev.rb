class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.20/punq-dev-v1.3.0-develop.20-darwin-arm64.tar.gz"
      sha256 "1fc3c701458d3bf8dbde2c4d60a8e732ffdc3c77e4930529f5b856d90580bd59"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.20/punq-dev-v1.3.0-develop.20-darwin-amd64.tar.gz"
      sha256 "1119ffce34193e6abd4bdfb51e83d31da0e99f47e77c54780f7b2af5e019c5e5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.20/punq-dev-v1.3.0-develop.20-linux-amd64.tar.gz"
        sha256 "ee1410edacc7cd696f51310f92829d4338372cacabd59f6a1dce93f69bc2d601"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.20/punq-dev-v1.3.0-develop.20-linux-386.tar.gz"
        sha256 "0e06d593e3408edd11b2d7aed22fa95c5d7d0528c88f79ddcc6c48b2c5ed553d"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.20/punq-dev-v1.3.0-develop.20-linux-arm64.tar.gz"
        sha256 "3aff2371424e12f54e14f815fe0cdac991d39e30979e0ff984b053b62e63494c"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.20/punq-dev-v1.3.0-develop.20-linux-arm.tar.gz"
        sha256 "551e52056049e9c6cf8565d4f324731737996268bb3f8627939fd423f6d592ab"
      end
    end
  end
  
  version "1.3.0-develop.20"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.20-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.20-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.20-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.20-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.20-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.20-linux-arm" => "punq-dev"
      end
    end
  end
end
end
