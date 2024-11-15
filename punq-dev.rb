class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.77/punq-dev-v1.5.0-develop.77-darwin-arm64.tar.gz"
      sha256 "82352be0d525ba095c502797746964738839c0232a8868d5bb36da5c712b3e98"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.77/punq-dev-v1.5.0-develop.77-darwin-amd64.tar.gz"
      sha256 "3779429693b54a221da1012d0256fd6fe160476625ec55c1d2da7b2a118a19ee"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.77/punq-dev-v1.5.0-develop.77-linux-amd64.tar.gz"
        sha256 "ab19dff646c58300ea7ca8a6df3dca256ecccc0b9c4670e2d9dfdd24b854ac02"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.77/punq-dev-v1.5.0-develop.77-linux-386.tar.gz"
        sha256 "72d11bd3356603a44bea89a3885d42aae126fb7ee67f1d918e72da5ec549c0b8"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.77/punq-dev-v1.5.0-develop.77-linux-arm64.tar.gz"
        sha256 "421eb4a98b4e31a76ab53eb4a47ff0a3e371a8aaddda60f99a4644cf0bd2d962"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.77/punq-dev-v1.5.0-develop.77-linux-arm.tar.gz"
        sha256 "1e48d9b517b95820ef6fc896a1459474110d693cf59c2ccf7db51a6e08c0f13f"
      end
    end
  end
  
  version "1.5.0-develop.77"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.77-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.77-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.77-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.77-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.77-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.77-linux-arm" => "punq-dev"
      end
    end
  end
end
end
