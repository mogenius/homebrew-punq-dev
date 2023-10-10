class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.6/punq-dev-v1.4.0-develop.6-darwin-arm64.tar.gz"
      sha256 "a8fd543699f16c4268c78b1fbe3ab70267c3ae23faade085199393dc55bd62ab"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.6/punq-dev-v1.4.0-develop.6-darwin-amd64.tar.gz"
      sha256 "d97fee1f4368bc68412d770a08224996473bbba9de09ad2d51771fe048fe5df1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.6/punq-dev-v1.4.0-develop.6-linux-amd64.tar.gz"
        sha256 "345dd5ee896b94f35b978d9b150005492d9804119c538ce6856a5bfc7100a31a"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.6/punq-dev-v1.4.0-develop.6-linux-386.tar.gz"
        sha256 "a16e5e30ca67d8c538f3a8a2d87518a54e11083ae1d200a725b81cee753841bf"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.6/punq-dev-v1.4.0-develop.6-linux-arm64.tar.gz"
        sha256 "95ebc4f8bf2d18c09a308a645f290d8303e1327d680c14d1cfa8d4f27ceda40a"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.6/punq-dev-v1.4.0-develop.6-linux-arm.tar.gz"
        sha256 "81d75eae346e6a5b9c84b3655d81aa8186f6ab6a40eec34e2bd9aa5164c0d1ec"
      end
    end
  end
  
  version "1.4.0-develop.6"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.0-develop.6-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.0-develop.6-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.0-develop.6-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.0-develop.6-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.0-develop.6-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.0-develop.6-linux-arm" => "punq-dev"
      end
    end
  end
end
end
