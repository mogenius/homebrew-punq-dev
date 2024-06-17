class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.68/punq-dev-v1.5.0-develop.68-darwin-arm64.tar.gz"
      sha256 "47cd39f9c89a39b6604345e63335f5c9e7929cfb2e831e92d7005029a7840fe0"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.68/punq-dev-v1.5.0-develop.68-darwin-amd64.tar.gz"
      sha256 "a1e99e1c45f7974f08a49669605006bf69352e0d774e2b7d37ce71354c4aa2cb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.68/punq-dev-v1.5.0-develop.68-linux-amd64.tar.gz"
        sha256 "04a21e164ef1f13a676b0f23d94046a0c352d2cbeaaabd62c25a66f0731f914b"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.68/punq-dev-v1.5.0-develop.68-linux-386.tar.gz"
        sha256 "b4f83b394f8c122f689a02cc7170a24940e02516f9999fb7dc70089db496d7cb"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.68/punq-dev-v1.5.0-develop.68-linux-arm64.tar.gz"
        sha256 "7b2ee0ae91e2820a7777dd943fcd81c62534abfd625bf5224af16354b9ae4080"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.68/punq-dev-v1.5.0-develop.68-linux-arm.tar.gz"
        sha256 "6b5f87cc59ec32340220d54995a0d95cbb4576099f0a78c0fdd52ec761bbfeb1"
      end
    end
  end
  
  version "1.5.0-develop.68"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.68-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.68-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.68-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.68-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.68-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.68-linux-arm" => "punq-dev"
      end
    end
  end
end
end
