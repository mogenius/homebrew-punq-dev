class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.7/punq-dev-v1.4.2-develop.7-darwin-arm64.tar.gz"
      sha256 "555bc22dea89d3d5730fe6156199119da89570fca41411a0d60d6433d4d9f2a6"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.7/punq-dev-v1.4.2-develop.7-darwin-amd64.tar.gz"
      sha256 "e58769fbc656c71f079d5802d5ed5ad63d49a319beed6c456a4ee097c4dea77b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.7/punq-dev-v1.4.2-develop.7-linux-amd64.tar.gz"
        sha256 "d1a489d4f8b6a816f130500bfc41b254a7be5d8dfe6cc7e17d467fc69899d142"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.7/punq-dev-v1.4.2-develop.7-linux-386.tar.gz"
        sha256 "5b58b1abad8c2f6a1bc7a0ad7e89ea97a092b85d7c3f9498c5c73a64c5db6b5a"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.7/punq-dev-v1.4.2-develop.7-linux-arm64.tar.gz"
        sha256 "7f5be8080a4a23424e2f2529c0c6fb2ba300f3eabb8cbf3965485f68b9227658"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.7/punq-dev-v1.4.2-develop.7-linux-arm.tar.gz"
        sha256 "ec570bc7a3b3079fee8bf01e7fc36f797788ebde2a9021744152e855c00bd13e"
      end
    end
  end
  
  version "1.4.2-develop.7"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.2-develop.7-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.2-develop.7-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.2-develop.7-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.2-develop.7-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.2-develop.7-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.2-develop.7-linux-arm" => "punq-dev"
      end
    end
  end
end
end
