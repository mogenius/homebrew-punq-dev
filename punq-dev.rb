class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.4/punq-dev-v1.5.0-develop.4-darwin-arm64.tar.gz"
      sha256 "bcde6fcd739715371f0e715aa1859a0b6df1e0d7dcdf1fb70f1737142e5719c2"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.4/punq-dev-v1.5.0-develop.4-darwin-amd64.tar.gz"
      sha256 "6f2b22a275ee4eff6f0492ad034cbec12f45070e500d7a13cf7b3bc34c2985a2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.4/punq-dev-v1.5.0-develop.4-linux-amd64.tar.gz"
        sha256 "982b90d45a9a762b83e4397f26142d92dd801dfc53fa89dcc6141a600ee6b74c"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.4/punq-dev-v1.5.0-develop.4-linux-386.tar.gz"
        sha256 "1c7a1b1a85762538704089b5d64850caf3978c66a4062a42e6d17bed6a5a25bb"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.4/punq-dev-v1.5.0-develop.4-linux-arm64.tar.gz"
        sha256 "f2649de6c825116399b5218eb2f7f14072dd3ed019374e3fc71d5e82fc7ee8be"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.4/punq-dev-v1.5.0-develop.4-linux-arm.tar.gz"
        sha256 "c48b0a9549c2f165e0ff6b62426cb1902328aa8a0643d391a1a7604d28832e89"
      end
    end
  end
  
  version "1.5.0-develop.4"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.4-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.4-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.4-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.4-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.4-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.4-linux-arm" => "punq-dev"
      end
    end
  end
end
end
