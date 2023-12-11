class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.33/punq-dev-v1.5.0-develop.33-darwin-arm64.tar.gz"
      sha256 "8a28ab20fbf51e9c154b6cb45e5ebaa1441ce7f122184ceb3b81f997dd993cd0"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.33/punq-dev-v1.5.0-develop.33-darwin-amd64.tar.gz"
      sha256 "85abdc91b7abb3c743423599f6cd4c7aa2fbf19a6049d6024af2b04a8f9cb7ad"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.33/punq-dev-v1.5.0-develop.33-linux-amd64.tar.gz"
        sha256 "900613f30f076bb29d28a8835a36fcb8d39dc14f26c288166efdcbe532184e9f"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.33/punq-dev-v1.5.0-develop.33-linux-386.tar.gz"
        sha256 "ce7950644a7d0f5b7ea48d074ffdc3d14370451a846134c0481f4b3cc642f629"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.33/punq-dev-v1.5.0-develop.33-linux-arm64.tar.gz"
        sha256 "ea754c7b9e19badc6663e65bb92c2d729f03b0ac0d548eeb88340ad5287c5ade"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.33/punq-dev-v1.5.0-develop.33-linux-arm.tar.gz"
        sha256 "bf1a0dc7b7df2a4129f7c398283d0ef1c9eb9fec335645d1b97cd596ed346a34"
      end
    end
  end
  
  version "1.5.0-develop.33"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.33-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.33-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.33-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.33-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.33-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.33-linux-arm" => "punq-dev"
      end
    end
  end
end
end
