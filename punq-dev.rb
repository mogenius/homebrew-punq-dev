class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.44/punq-dev-v1.5.0-develop.44-darwin-arm64.tar.gz"
      sha256 "90d2e07b8060e8fc1f7c4fb63efa674a3aed42143993bb53c28fb3259bcedcd0"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.44/punq-dev-v1.5.0-develop.44-darwin-amd64.tar.gz"
      sha256 "cb6310dc9fc6c867896d4a1b84633380b3146707e966362d1752c75f6443df6c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.44/punq-dev-v1.5.0-develop.44-linux-amd64.tar.gz"
        sha256 "5bfcf177e2bfc67200948862072c9c909c58a95f477c526f630eb00618fbcdc5"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.44/punq-dev-v1.5.0-develop.44-linux-386.tar.gz"
        sha256 "842650dc10a2639bfe8ee19cc65a2903797db0699fbe2b07fabf0f3058145e3c"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.44/punq-dev-v1.5.0-develop.44-linux-arm64.tar.gz"
        sha256 "fd06a87ea50c68af44982cace3102dbd3b366cb9aec927fae0573732fe0362fe"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.44/punq-dev-v1.5.0-develop.44-linux-arm.tar.gz"
        sha256 "852108237ad070e2a4f8bf26dfafbb1830476a1a331d48fe3faefd7b0360eedc"
      end
    end
  end
  
  version "1.5.0-develop.44"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.44-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.44-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.44-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.44-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.44-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.44-linux-arm" => "punq-dev"
      end
    end
  end
end
end
