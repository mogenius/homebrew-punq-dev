class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.22/punq-dev-v1.3.0-develop.22-darwin-arm64.tar.gz"
      sha256 "443213ecc24e91003f40deffb17dc20e372fe5d0e32d3d82ab67249cdd866525"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.22/punq-dev-v1.3.0-develop.22-darwin-amd64.tar.gz"
      sha256 "87958e5889b0df2e7f9ee5b8d1f1cb5cdce561a0115a8566891a08ff82aeeb79"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.22/punq-dev-v1.3.0-develop.22-linux-amd64.tar.gz"
        sha256 "5db08a78e3f879ed8516f8cb0f72907d8b586ba6fa7519f7f4f553fb933988c7"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.22/punq-dev-v1.3.0-develop.22-linux-386.tar.gz"
        sha256 "4ec5de24b760f9faa9a65b32cdfa3c5f5aa745d82edff2e576ec27532100ba2f"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.22/punq-dev-v1.3.0-develop.22-linux-arm64.tar.gz"
        sha256 "87700649e9bf787b8ce1d53ccca8230f0cdacbfb70c0111472cc7bb4ccd7db75"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.22/punq-dev-v1.3.0-develop.22-linux-arm.tar.gz"
        sha256 "d079c6ad4c0cbe9b9f35a4ac9ba3be407fdbf07619cfb81e9ae7c2360865be2c"
      end
    end
  end
  
  version "1.3.0-develop.22"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.22-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.22-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.22-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.22-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.22-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.22-linux-arm" => "punq-dev"
      end
    end
  end
end
end
