class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.33/punq-dev-v1.3.0-develop.33-darwin-arm64.tar.gz"
      sha256 "99a4b04fdbcc90c6101d09896d5efc2fe5e52904abba42bb78ae0f875f6eb137"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.33/punq-dev-v1.3.0-develop.33-darwin-amd64.tar.gz"
      sha256 "ac7bb7b7dfb2e62c6e0ea68b60254bb90dcdca82326923eaae84f471e2271e57"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.33/punq-dev-v1.3.0-develop.33-linux-amd64.tar.gz"
        sha256 "1675c1ae4aae9e5eca2987d9340ae287daeddb1e234de1ccd85541c368a66578"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.33/punq-dev-v1.3.0-develop.33-linux-386.tar.gz"
        sha256 "2171b5087692342a29a6731d48caf03d6ce2c5052788dbe5b305d52498e86c5f"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.33/punq-dev-v1.3.0-develop.33-linux-arm64.tar.gz"
        sha256 "3714f21852a4f5a18546a7072447a901292d625950fe84718efbd59d38a0fccb"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.33/punq-dev-v1.3.0-develop.33-linux-arm.tar.gz"
        sha256 "3bfa38d35a0faa32be389eb3e175966565403a9fd069763cfd801cd1d825b11f"
      end
    end
  end
  
  version "1.3.0-develop.33"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.33-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.33-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.33-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.33-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.33-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.33-linux-arm" => "punq-dev"
      end
    end
  end
end
end
