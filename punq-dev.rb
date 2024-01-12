class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.42/punq-dev-v1.5.0-develop.42-darwin-arm64.tar.gz"
      sha256 "bf70619e99a7c918a9e8fc7251392e14ab2d14e0adef3e3d9fd823bf71005860"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.42/punq-dev-v1.5.0-develop.42-darwin-amd64.tar.gz"
      sha256 "6fffa4bf17d425852e1974696baec22448e9220bba1daaa0bfe0a00cb8ed5137"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.42/punq-dev-v1.5.0-develop.42-linux-amd64.tar.gz"
        sha256 "545c9e028ac261d2c36eb96137fdd2a5e29c901fc92218aa208bb4e0628b5366"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.42/punq-dev-v1.5.0-develop.42-linux-386.tar.gz"
        sha256 "8cad9cdc7680c25f1c8af0d3d08b90a42f48a9869d7fb425d31dc34627c02e04"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.42/punq-dev-v1.5.0-develop.42-linux-arm64.tar.gz"
        sha256 "3517d7c2775c4296de84412129e518000c1a90ea61050277ea29b96bb1666880"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.42/punq-dev-v1.5.0-develop.42-linux-arm.tar.gz"
        sha256 "5dae1d108d2d69bca99730b478f6b5e6ac65e1140b519e532da383e0cf36c91c"
      end
    end
  end
  
  version "1.5.0-develop.42"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.42-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.42-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.42-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.42-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.42-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.42-linux-arm" => "punq-dev"
      end
    end
  end
end
end
