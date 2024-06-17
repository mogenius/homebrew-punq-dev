class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.67/punq-dev-v1.5.0-develop.67-darwin-arm64.tar.gz"
      sha256 "aca6a79a7ba0087f914031b4de15f5571598464dad64a7099437e727967d2b59"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.67/punq-dev-v1.5.0-develop.67-darwin-amd64.tar.gz"
      sha256 "00b5e13964b03ec9d75ba476f1f561002b8ba60fd30f1063dde2515facb8ff66"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.67/punq-dev-v1.5.0-develop.67-linux-amd64.tar.gz"
        sha256 "14f008e11836160b95125058420793b591fdd0b4e73a6f52191b88f5e31f4b34"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.67/punq-dev-v1.5.0-develop.67-linux-386.tar.gz"
        sha256 "ab9cd94b6fff33c5ae6a459cf8557b74076b5d6e994d0be3afd1700b42905485"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.67/punq-dev-v1.5.0-develop.67-linux-arm64.tar.gz"
        sha256 "2bca9256a01c1523adfc83e4b70cbdee2df24c84260455b2c19b89d62781d8a4"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.67/punq-dev-v1.5.0-develop.67-linux-arm.tar.gz"
        sha256 "e93b5d915fffc438a330c6bf9cfcad55f5a2da0e80318235514e504631fc2e78"
      end
    end
  end
  
  version "1.5.0-develop.67"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.67-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.67-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.67-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.67-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.67-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.67-linux-arm" => "punq-dev"
      end
    end
  end
end
end
