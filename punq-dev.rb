class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.28/punq-dev-v1.3.0-develop.28-darwin-arm64.tar.gz"
      sha256 "98a84ffcd9c966f7c3d9cbf8d1ebfd54298dbf8fa0ee1e68848eede52c2d9647"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.28/punq-dev-v1.3.0-develop.28-darwin-amd64.tar.gz"
      sha256 "130a7bffb23a04f54c79d02f66c8f9e95e44c828bb630f95b4039cca0b5d8460"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.28/punq-dev-v1.3.0-develop.28-linux-amd64.tar.gz"
        sha256 "d2391f1fa46afefc3442950e3da4824179943b296d5d903df251ba95d0439ce6"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.28/punq-dev-v1.3.0-develop.28-linux-386.tar.gz"
        sha256 "bd9795d7d375657f9fc0f391c6989eeeca4acf5e8bd1bf4fbfdb9015fb53ca15"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.28/punq-dev-v1.3.0-develop.28-linux-arm64.tar.gz"
        sha256 "1d0fce6baa73cb560cfb866e2c83e7e46bed1c68b588997f9ae569a6b5015f53"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.28/punq-dev-v1.3.0-develop.28-linux-arm.tar.gz"
        sha256 "54d70bc8975ee86a8d91ca5c90b5097706bf41133745c83f78b99c577d04d712"
      end
    end
  end
  
  version "1.3.0-develop.28"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.28-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.28-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.28-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.28-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.28-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.28-linux-arm" => "punq-dev"
      end
    end
  end
end
end
