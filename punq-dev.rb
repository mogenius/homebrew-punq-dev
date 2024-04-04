class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.64/punq-dev-v1.5.0-develop.64-darwin-arm64.tar.gz"
      sha256 "f8820d95887f57d88c0dbee1d3497a7e641d23358ff63260df7988b8f7956733"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.64/punq-dev-v1.5.0-develop.64-darwin-amd64.tar.gz"
      sha256 "1af54172d6fffc0c9d8a69c518fd63c881fbbd8b7bf2cdf8024f95f55836b086"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.64/punq-dev-v1.5.0-develop.64-linux-amd64.tar.gz"
        sha256 "4e01dff140c3584b96095577b6bf6b3e99d0a1a6b04037c835c260e2d28cdf57"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.64/punq-dev-v1.5.0-develop.64-linux-386.tar.gz"
        sha256 "b7158c5e313883c3630e4ea2b0482d90ee9492f77d4cb92075f5a8c9e466aa14"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.64/punq-dev-v1.5.0-develop.64-linux-arm64.tar.gz"
        sha256 "3b89fcc1b4eabab948d7e84fc96bd7a246c19330f8cb1393386ca5a31c7f2748"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.64/punq-dev-v1.5.0-develop.64-linux-arm.tar.gz"
        sha256 "98c395927eddeef1efdf186a118d5025a4526a5f5a77bb4ffb4dd650088ce03d"
      end
    end
  end
  
  version "1.5.0-develop.64"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.64-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.64-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.64-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.64-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.64-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.64-linux-arm" => "punq-dev"
      end
    end
  end
end
end
