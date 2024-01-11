class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.40/punq-dev-v1.5.0-develop.40-darwin-arm64.tar.gz"
      sha256 "ccf8d43df5a327b9828e515ceae54c74f11c21b0499526fb9c2ac6712a17a88c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.40/punq-dev-v1.5.0-develop.40-darwin-amd64.tar.gz"
      sha256 "fc94a1a4a5ff4888f835224772835fe3a4a56ae8ef6e488d0f0d8cbbcd1e3eaf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.40/punq-dev-v1.5.0-develop.40-linux-amd64.tar.gz"
        sha256 "b613ae2466a17f1044ff4a0782717f2655f40dc31a5e90eb8208217ec33db73b"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.40/punq-dev-v1.5.0-develop.40-linux-386.tar.gz"
        sha256 "6e4affcb6f6605873295b858d1b102e96aad1c6e71401392da9af8846798239c"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.40/punq-dev-v1.5.0-develop.40-linux-arm64.tar.gz"
        sha256 "13eb829427676f51833199240820fc773e6c8f794fd0fdea5677419de1dba659"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.40/punq-dev-v1.5.0-develop.40-linux-arm.tar.gz"
        sha256 "8410e4c6246e98e65c81c0ae82ca322d491262c483ef0f0bff562d3bcba46672"
      end
    end
  end
  
  version "1.5.0-develop.40"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.40-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.40-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.40-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.40-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.40-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.40-linux-arm" => "punq-dev"
      end
    end
  end
end
end
