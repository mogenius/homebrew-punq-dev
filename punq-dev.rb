class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.26/punq-dev-v1.5.0-develop.26-darwin-arm64.tar.gz"
      sha256 "2a1f230ae32af29065f4d01f302a759cf42017309094b8edfe96b91024e3ecc1"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.26/punq-dev-v1.5.0-develop.26-darwin-amd64.tar.gz"
      sha256 "d249b77917c1ce2ea62174decfdf5aa55c48bb0f42c4f4d9ed77959994100111"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.26/punq-dev-v1.5.0-develop.26-linux-amd64.tar.gz"
        sha256 "68b651bd0cf5e8259f15cb65a4e8f49473a8d2dc67efb9508203a8245e2272fc"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.26/punq-dev-v1.5.0-develop.26-linux-386.tar.gz"
        sha256 "3c8d5fac4c7d8caf5d12f0352ac147aa2df732e0b4ff3fb02a90fff1b586039d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.26/punq-dev-v1.5.0-develop.26-linux-arm64.tar.gz"
        sha256 "cd98f274c83efdf220bb8cab0f1fff1a670ffc708c704f07a7e9b24b260c655e"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.26/punq-dev-v1.5.0-develop.26-linux-arm.tar.gz"
        sha256 "6eb410dbf9fcb3c3d2666cf05c630d9a3fe5d647aa9359ae0ac9ff96c058733d"
      end
    end
  end
  
  version "1.5.0-develop.26"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.26-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.26-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.26-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.26-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.26-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.26-linux-arm" => "punq-dev"
      end
    end
  end
end
end
