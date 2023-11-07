class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.19/punq-dev-v1.5.0-develop.19-darwin-arm64.tar.gz"
      sha256 "544ee07d871145449878f9eaec04b6cef0c6dc64834ed33e2a280c1b2cfb96c8"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.19/punq-dev-v1.5.0-develop.19-darwin-amd64.tar.gz"
      sha256 "22c4f49a0cd22b599b508ec711c8df2ff21a4a2c506a19146b863e713d901985"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.19/punq-dev-v1.5.0-develop.19-linux-amd64.tar.gz"
        sha256 "6645339500586e603ee387b350f56f107302688509aec2e173886d36f3c50514"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.19/punq-dev-v1.5.0-develop.19-linux-386.tar.gz"
        sha256 "445a599eb9b5c67ea86dde3ed2ae12e74d0e8accb407979e8de5c2529341f923"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.19/punq-dev-v1.5.0-develop.19-linux-arm64.tar.gz"
        sha256 "4b3b60e5d75a6f6e0d56a890748d78ed9e4e1b1ee7db6082424c14c4a05664ea"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.19/punq-dev-v1.5.0-develop.19-linux-arm.tar.gz"
        sha256 "f44d793bdcda98226f248d62644c77891646ab11f8082c48f2bcfe8532a08b0a"
      end
    end
  end
  
  version "1.5.0-develop.19"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.19-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.19-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.19-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.19-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.19-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.19-linux-arm" => "punq-dev"
      end
    end
  end
end
end
