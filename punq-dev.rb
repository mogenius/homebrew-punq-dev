class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.18/punq-dev-v1.5.0-develop.18-darwin-arm64.tar.gz"
      sha256 "d515a3cf90aba0f7a97bb9e593614d95ab1f1962138f074de65a8c917f4778ad"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.18/punq-dev-v1.5.0-develop.18-darwin-amd64.tar.gz"
      sha256 "573df61b0170e3409097cce27633426273880c40c0a76296c3697fd1948d335f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.18/punq-dev-v1.5.0-develop.18-linux-amd64.tar.gz"
        sha256 "dfde258e1213a7a40ff9c67343d267acae47771cd8b81ece7f1b78dd6afd0755"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.18/punq-dev-v1.5.0-develop.18-linux-386.tar.gz"
        sha256 "9e17ce760b922f757787e283bc29a1f6a00a22dc4ed75bb7a2beacbef7fa0dff"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.18/punq-dev-v1.5.0-develop.18-linux-arm64.tar.gz"
        sha256 "ed5b133ef19bae98203aa9689f730b6872096908d01385b6f0deba521b09d103"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.18/punq-dev-v1.5.0-develop.18-linux-arm.tar.gz"
        sha256 "b6f8830f31490be9bcf6735b1698f3a7cd29ee462b75ef3a83438d4011eddfd5"
      end
    end
  end
  
  version "1.5.0-develop.18"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.18-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.18-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.18-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.18-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.18-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.18-linux-arm" => "punq-dev"
      end
    end
  end
end
end
