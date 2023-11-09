class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.22/punq-dev-v1.5.0-develop.22-darwin-arm64.tar.gz"
      sha256 "b9025e260424ca4da76ea2baf471aed6b688ed7b6c5e36a4ba7a0e5e950559ad"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.22/punq-dev-v1.5.0-develop.22-darwin-amd64.tar.gz"
      sha256 "93bd9b40e245e8f7e5d45173058fc18feebf427ca6be07a081fe630dc315e2ce"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.22/punq-dev-v1.5.0-develop.22-linux-amd64.tar.gz"
        sha256 "f05eb8fb8170d9205c2d6d7d6e629cc0e75804c64f3e60fcd32f05541fce07b2"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.22/punq-dev-v1.5.0-develop.22-linux-386.tar.gz"
        sha256 "1d53b2d0b4d7a541228cd4125171cb22a45ee59eb64d844bf408ca4effce68df"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.22/punq-dev-v1.5.0-develop.22-linux-arm64.tar.gz"
        sha256 "f1dbddff461b22c771034b1f401c9e5847d81d91d9bd285decca9337d8c24e7c"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.22/punq-dev-v1.5.0-develop.22-linux-arm.tar.gz"
        sha256 "89f1f631843714972ca94e0a30ee9c092a6119f52177f2c7d25bab6be2e81ad3"
      end
    end
  end
  
  version "1.5.0-develop.22"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.22-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.22-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.22-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.22-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.22-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.22-linux-arm" => "punq-dev"
      end
    end
  end
end
end
