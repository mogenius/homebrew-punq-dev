class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.75/punq-dev-v1.5.0-develop.75-darwin-arm64.tar.gz"
      sha256 "3000ca57bec179be30fe15d4401f647d3c766df22881697e28638f12f843bab4"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.75/punq-dev-v1.5.0-develop.75-darwin-amd64.tar.gz"
      sha256 "0d69e00c2d9986c5e2ef6016f848c549ae5950458223d088fe99fcce2c73577e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.75/punq-dev-v1.5.0-develop.75-linux-amd64.tar.gz"
        sha256 "d9421a537de5172614d843054929baac73dab16b8f0b63b8f5ae844b3aabd4e6"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.75/punq-dev-v1.5.0-develop.75-linux-386.tar.gz"
        sha256 "9baae693fb1b051e1ff5b97b73ea347b4e5ba1527a63b2e9b480cfec45173214"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.75/punq-dev-v1.5.0-develop.75-linux-arm64.tar.gz"
        sha256 "3aeeb3537ace990d58589561e3fa84c6cb6d618d1f125831b788b8077d483592"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.75/punq-dev-v1.5.0-develop.75-linux-arm.tar.gz"
        sha256 "629de706e2a400135697b117c437f40565d781d6f14ff3e82f2ced9ec2829941"
      end
    end
  end
  
  version "1.5.0-develop.75"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.75-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.75-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.75-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.75-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.75-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.75-linux-arm" => "punq-dev"
      end
    end
  end
end
end
