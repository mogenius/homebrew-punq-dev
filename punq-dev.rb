class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.73/punq-dev-v1.5.0-develop.73-darwin-arm64.tar.gz"
      sha256 "362d4df0ae93f790ef06e0b1db0ff152acecceb47ceabdcf86ae87af64040135"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.73/punq-dev-v1.5.0-develop.73-darwin-amd64.tar.gz"
      sha256 "108c68c34de833cc660b1f713650d6accc7a953f2b61f68ac816bd1ff2340900"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.73/punq-dev-v1.5.0-develop.73-linux-amd64.tar.gz"
        sha256 "fd1affc703d589f66241783d7ed7cbd846f296ebc00840ee265954940f35f063"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.73/punq-dev-v1.5.0-develop.73-linux-386.tar.gz"
        sha256 "87eed5d554ad18d1be8b002dcd75a65939afad2c352ff845e6b7a30994dee2df"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.73/punq-dev-v1.5.0-develop.73-linux-arm64.tar.gz"
        sha256 "d2c8335242b1317f151f6a334f156378b524e2f28c5b3960dfe57c498c8ff825"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.73/punq-dev-v1.5.0-develop.73-linux-arm.tar.gz"
        sha256 "0ae2d79f65fdc7cb024a2d2d591e7f8496db5f9d8268f354cb6b31b7b644aaf8"
      end
    end
  end
  
  version "1.5.0-develop.73"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.73-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.73-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.73-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.73-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.73-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.73-linux-arm" => "punq-dev"
      end
    end
  end
end
end
