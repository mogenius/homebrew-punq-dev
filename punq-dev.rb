class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.6/punq-dev-v1.5.0-develop.6-darwin-arm64.tar.gz"
      sha256 "7a6d730bec2b61962efffc78233f260b6dcfb7188ab94a81afa6a4a075cfa551"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.6/punq-dev-v1.5.0-develop.6-darwin-amd64.tar.gz"
      sha256 "9dc2449ed7a091515c7a09f4cce1d458628b5cd662c9f72a3d0c3cb42f850680"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.6/punq-dev-v1.5.0-develop.6-linux-amd64.tar.gz"
        sha256 "f52822bb74a9925ed2b93b0bc8e5822713bc599cfeda7198c5c17806b2f8a2e4"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.6/punq-dev-v1.5.0-develop.6-linux-386.tar.gz"
        sha256 "b57ae46982f8d8c7df393410f5ab31955f15864310856fe0664255c1c8690ca8"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.6/punq-dev-v1.5.0-develop.6-linux-arm64.tar.gz"
        sha256 "11a49d7840080e6515a2c712dc3cab0fed2320549efb9c31ed54248fad1200fb"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.6/punq-dev-v1.5.0-develop.6-linux-arm.tar.gz"
        sha256 "85ba4387f869677a9badfdae9777b7dd09fb7246f6ab4b51446ad75d2016dd2f"
      end
    end
  end
  
  version "1.5.0-develop.6"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.6-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.6-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.6-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.6-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.6-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.6-linux-arm" => "punq-dev"
      end
    end
  end
end
end
