class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.66/punq-dev-v1.5.0-develop.66-darwin-arm64.tar.gz"
      sha256 "13b60bb28ded8159ff3c4a0d675c23d425f30555d5eb7526b2deb3d63dcc77a7"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.66/punq-dev-v1.5.0-develop.66-darwin-amd64.tar.gz"
      sha256 "529bac5d9526b4e6f217f235cc92c08ecdc95f1b9075d5fb2ceef4183e033654"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.66/punq-dev-v1.5.0-develop.66-linux-amd64.tar.gz"
        sha256 "8adbd4b7c20bc1279c27fc5a0a1a3cf3358c8913c0f50d682c9379976cfbbf73"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.66/punq-dev-v1.5.0-develop.66-linux-386.tar.gz"
        sha256 "8e5d16422847c028e488eca2924554db64b8f0615f34fd1dc71e0d6caacc23c0"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.66/punq-dev-v1.5.0-develop.66-linux-arm64.tar.gz"
        sha256 "a7dda5e9acf42b7d226fcb21d8aade45d208e2c70f4bedb910425c779a68303f"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.66/punq-dev-v1.5.0-develop.66-linux-arm.tar.gz"
        sha256 "d39cad3b356ad9152f7e281780754fb17ba677663d61e4511962e08466485141"
      end
    end
  end
  
  version "1.5.0-develop.66"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.66-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.66-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.66-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.66-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.66-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.66-linux-arm" => "punq-dev"
      end
    end
  end
end
end
