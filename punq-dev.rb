class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.8/punq-dev-v1.5.0-develop.8-darwin-arm64.tar.gz"
      sha256 "1ccd6a41c51fe1daef56f9cf2edb23a9996ed853ecb37b8de3cdf6630d45b93c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.8/punq-dev-v1.5.0-develop.8-darwin-amd64.tar.gz"
      sha256 "2f4b4e8a414f7d6f55325972b223c6f6948aa3e5a1820555480bd3133bcc821c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.8/punq-dev-v1.5.0-develop.8-linux-amd64.tar.gz"
        sha256 "4baed1a2eb6f30a1ef63df5915709e14ea383c9f30a4cb833bf280cafd77b75e"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.8/punq-dev-v1.5.0-develop.8-linux-386.tar.gz"
        sha256 "f197c796b96b1bcb59f136696d32202fe8cdc13b6750465116fca0809a1d10a7"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.8/punq-dev-v1.5.0-develop.8-linux-arm64.tar.gz"
        sha256 "f618f32c1e3ad485b670e61247c76e2ac7cb4828c89c3e70edd5b942347062ce"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.8/punq-dev-v1.5.0-develop.8-linux-arm.tar.gz"
        sha256 "7e57bda9dc5739ec65bd3f4e0d730f5ebc2578d67c5b9273c41b53aa5f6620c3"
      end
    end
  end
  
  version "1.5.0-develop.8"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.8-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.8-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.8-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.8-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.8-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.8-linux-arm" => "punq-dev"
      end
    end
  end
end
end
