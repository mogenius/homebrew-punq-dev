class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.2/punq-dev-v1.4.0-develop.2-darwin-arm64.tar.gz"
      sha256 "8f999b9b2230710ca836c0ec0caf095dbb0377abd36daa104ebff742c04438c8"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.2/punq-dev-v1.4.0-develop.2-darwin-amd64.tar.gz"
      sha256 "b402f1d18d5f5209463c26b93a8056d3ca30d6a09c422758c9c2fc6b479cd4c1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.2/punq-dev-v1.4.0-develop.2-linux-amd64.tar.gz"
        sha256 "5d35d75f93edadaabfc617f562b2b34377c671ec58cdc3779fb9e6b2810488a0"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.2/punq-dev-v1.4.0-develop.2-linux-386.tar.gz"
        sha256 "1306c3c1ccb2db7eac66464fe53b485084b155dc598347be47d336072997b007"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.2/punq-dev-v1.4.0-develop.2-linux-arm64.tar.gz"
        sha256 "e6d2455cc46643b18b379b4c7ffcfc636da6ede889225864eb8b7cf9cd1010ac"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.2/punq-dev-v1.4.0-develop.2-linux-arm.tar.gz"
        sha256 "4208b43110789f03bb7afa6f0672be14fa47884e32f581101a540b15784e69e2"
      end
    end
  end
  
  version "1.4.0-develop.2"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.0-develop.2-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.0-develop.2-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.0-develop.2-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.0-develop.2-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.0-develop.2-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.0-develop.2-linux-arm" => "punq-dev"
      end
    end
  end
end
end
