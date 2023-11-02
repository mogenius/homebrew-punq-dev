class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.5/punq-dev-v1.5.0-develop.5-darwin-arm64.tar.gz"
      sha256 "be88b130d1bb1cc3e4bc3fa0cf3e0b42a896fd71f0b163550552f60b163a5467"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.5/punq-dev-v1.5.0-develop.5-darwin-amd64.tar.gz"
      sha256 "790e41d657ca1b80940be63f11b8cb23da8f08b09f8e97efaeef8de244baaed2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.5/punq-dev-v1.5.0-develop.5-linux-amd64.tar.gz"
        sha256 "4cfb1f10d2d1ef18a6ff56e3da7ed8fe3ffb334bacd1f2642fc7cd44aa32f00b"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.5/punq-dev-v1.5.0-develop.5-linux-386.tar.gz"
        sha256 "32427d7d0041c359e79ac72abe2761f418654bcc9b98bc6e585ffd4b4bdd2e49"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.5/punq-dev-v1.5.0-develop.5-linux-arm64.tar.gz"
        sha256 "6a4856038ad6957aabec05410d6fd15b1c10e309f2c9d56025c57761edcdc0a9"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.5/punq-dev-v1.5.0-develop.5-linux-arm.tar.gz"
        sha256 "0587e5d6904fe8c36d5f7a07ec75e9529e3f772b9a96e2efb522f8bbf406c609"
      end
    end
  end
  
  version "1.5.0-develop.5"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.5-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.5-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.5-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.5-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.5-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.5-linux-arm" => "punq-dev"
      end
    end
  end
end
end
