class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.11/punq-dev-v1.5.0-develop.11-darwin-arm64.tar.gz"
      sha256 "af5e97c670d01f7d57f32a2ae6eeeaeec99fbbae0f8e1e94584496ce31c531ee"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.11/punq-dev-v1.5.0-develop.11-darwin-amd64.tar.gz"
      sha256 "560751b130cae2ede86772f44dc10b45d71ea2047ff411a338162b60dd009aab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.11/punq-dev-v1.5.0-develop.11-linux-amd64.tar.gz"
        sha256 "8b3e5927b230d5249207b0bcddb3078b3f2cdd003265d0e9d1144be5c787a726"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.11/punq-dev-v1.5.0-develop.11-linux-386.tar.gz"
        sha256 "cd69e0bb89a1099f1cfb879b1d96c851875df04f4d515190e642405560df82ca"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.11/punq-dev-v1.5.0-develop.11-linux-arm64.tar.gz"
        sha256 "8be2131014c97f391ea39940b8ffdb88ff1f20b112fc753f077477e35e0cc4a7"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.11/punq-dev-v1.5.0-develop.11-linux-arm.tar.gz"
        sha256 "64f7f655508db96a4af56094bbb0fe2339f8e2904ef7b8066e38182dc6a0107d"
      end
    end
  end
  
  version "1.5.0-develop.11"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.11-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.11-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.11-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.11-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.11-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.11-linux-arm" => "punq-dev"
      end
    end
  end
end
end
