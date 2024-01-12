class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.41/punq-dev-v1.5.0-develop.41-darwin-arm64.tar.gz"
      sha256 "deaac4c8c7485f25ff9454910ab96e74c1a3ddb26e2e0aa48f139a72b34c9803"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.41/punq-dev-v1.5.0-develop.41-darwin-amd64.tar.gz"
      sha256 "98298fb14a698fd11524ccfeb90cf3d7aa49c336b4ffa222fd7352fc1a06c5f5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.41/punq-dev-v1.5.0-develop.41-linux-amd64.tar.gz"
        sha256 "8a9d566ce329cff355c22330b6d725bcb44b5995b104c0bba0b8f2ac60a8bdab"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.41/punq-dev-v1.5.0-develop.41-linux-386.tar.gz"
        sha256 "4c39dbf9b93caec51155d9ccce761124dad29a9b2449a2ea4e428565135483f4"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.41/punq-dev-v1.5.0-develop.41-linux-arm64.tar.gz"
        sha256 "49997f062247e3d1400741e15fdf8e5ba538276a052b6480ddc33c1af97f3321"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.41/punq-dev-v1.5.0-develop.41-linux-arm.tar.gz"
        sha256 "49e0dec48a888192fa448186b45c1b809a27a621c4ee034cb427c7d088a1df7b"
      end
    end
  end
  
  version "1.5.0-develop.41"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.41-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.41-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.41-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.41-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.41-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.41-linux-arm" => "punq-dev"
      end
    end
  end
end
end
