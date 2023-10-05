class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.26/punq-dev-v1.3.0-develop.26-darwin-arm64.tar.gz"
      sha256 "f959b07b17556318285ded56762567e9a3408b0fbb6abfcc467213c81a3372e4"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.26/punq-dev-v1.3.0-develop.26-darwin-amd64.tar.gz"
      sha256 "abcc65aa1aa4ee1663dcd5e0ad037a10f7699ee738e912379fccadff2561084e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.26/punq-dev-v1.3.0-develop.26-linux-amd64.tar.gz"
        sha256 "ce98cc85648deca4a5c34849fa1de870d3ad641f857540bec6717f31c82a714f"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.26/punq-dev-v1.3.0-develop.26-linux-386.tar.gz"
        sha256 "53982e10497d436e92490e8b522d10940c3a4fd8588200260da3af823b56cc0e"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.26/punq-dev-v1.3.0-develop.26-linux-arm64.tar.gz"
        sha256 "167e3783587e4c34883a9b72d70e6c504fe7b3155065cc3c66d4e454da93eb46"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.26/punq-dev-v1.3.0-develop.26-linux-arm.tar.gz"
        sha256 "aeb6e0d7414c5392d6472cb50c373a4974f99a2402d02604e28a70ec831c2b0c"
      end
    end
  end
  
  version "1.3.0-develop.26"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.26-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.26-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.26-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.26-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.26-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.26-linux-arm" => "punq-dev"
      end
    end
  end
end
end
