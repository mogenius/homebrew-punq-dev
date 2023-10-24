class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.3/punq-dev-v1.4.9-develop.3-darwin-arm64.tar.gz"
      sha256 "5bc2500085e0f21fb0f2af12ae08573dcd2699b410c17480968c0a497eb6dc5b"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.3/punq-dev-v1.4.9-develop.3-darwin-amd64.tar.gz"
      sha256 "eb92f95a458e47af5d8c516f095474b0ec0ffdaf6db51a3ebbcd74847f2c8f7f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.3/punq-dev-v1.4.9-develop.3-linux-amd64.tar.gz"
        sha256 "49b2d57bd2b269609c7862aedbb2ba05046e726f334e8356d43587bc1a188ccb"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.3/punq-dev-v1.4.9-develop.3-linux-386.tar.gz"
        sha256 "e2841d818e24afbc3c274afb633d5b3246aa50e4089ac361ad1b64de75ac6721"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.3/punq-dev-v1.4.9-develop.3-linux-arm64.tar.gz"
        sha256 "a4d9a39feace146a1fb493dcf918dfdf2c5234b97a56bfadb89d517cf0f0a144"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.3/punq-dev-v1.4.9-develop.3-linux-arm.tar.gz"
        sha256 "7cb325bfb7f684f7f95b09938d1092fbcb3e01b7a6d336a0f0aa115338acf2db"
      end
    end
  end
  
  version "1.4.9-develop.3"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.9-develop.3-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.9-develop.3-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.9-develop.3-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.9-develop.3-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.9-develop.3-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.9-develop.3-linux-arm" => "punq-dev"
      end
    end
  end
end
end
