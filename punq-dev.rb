class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.6/punq-dev-v1.4.2-develop.6-darwin-arm64.tar.gz"
      sha256 "d32f11c4dfe2af6e18c1aab9a4dad53a19e096a3e1c888b0c863c443da30ce0b"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.6/punq-dev-v1.4.2-develop.6-darwin-amd64.tar.gz"
      sha256 "e2f4811de2b70d6355e2048fcfbb67a895c884d0adf92fae2701e0fdc778af1a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.6/punq-dev-v1.4.2-develop.6-linux-amd64.tar.gz"
        sha256 "eabc200eeb3d50aac8de4f1f3a2d7c7ef43cd9b997144863aea8be42b97cb49f"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.6/punq-dev-v1.4.2-develop.6-linux-386.tar.gz"
        sha256 "094d0e959092ae60151ad97e9b365e2ee973efa8b1a6de360692ef5da61be7f8"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.6/punq-dev-v1.4.2-develop.6-linux-arm64.tar.gz"
        sha256 "d72f9d1f2cb2bdd0a85a44e7e949fd0541a3c98ab3e4ce63151ddabe030d8d34"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.6/punq-dev-v1.4.2-develop.6-linux-arm.tar.gz"
        sha256 "c6776a9f8831923891baff64329a10bfa9aa1dcb7cd680198c0327e5071565c0"
      end
    end
  end
  
  version "1.4.2-develop.6"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.2-develop.6-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.2-develop.6-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.2-develop.6-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.2-develop.6-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.2-develop.6-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.2-develop.6-linux-arm" => "punq-dev"
      end
    end
  end
end
end
