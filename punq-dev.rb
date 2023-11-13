class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.27/punq-dev-v1.5.0-develop.27-darwin-arm64.tar.gz"
      sha256 "030d2145bb138bedb265808beaec8fedbd13895ca67d9cbdb4949075ae850d0b"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.27/punq-dev-v1.5.0-develop.27-darwin-amd64.tar.gz"
      sha256 "a5f84ae860aad58eb27186a5972f0b9140862ae2b4fbfb5985e8d3dbd6e2e129"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.27/punq-dev-v1.5.0-develop.27-linux-amd64.tar.gz"
        sha256 "53e67a9d869b94246bf2f19d4f02d836a8f0f5c70a1e7e588455454203dc3e63"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.27/punq-dev-v1.5.0-develop.27-linux-386.tar.gz"
        sha256 "33cd5e9219c33a21b179519ccf9b1148eed1c2b86090414b7e20da14b4960cec"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.27/punq-dev-v1.5.0-develop.27-linux-arm64.tar.gz"
        sha256 "ddeaca34aec42f69f7867641579f67c40b60a6994378d50ecc4faf7810cf4863"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.27/punq-dev-v1.5.0-develop.27-linux-arm.tar.gz"
        sha256 "0a37901ecf3c0c9a2f1ec55cfac74c70f3ed971258279844985db283f0b4e1bf"
      end
    end
  end
  
  version "1.5.0-develop.27"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.27-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.27-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.27-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.27-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.27-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.27-linux-arm" => "punq-dev"
      end
    end
  end
end
end
