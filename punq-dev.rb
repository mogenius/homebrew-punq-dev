class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.3/punq-dev-v1.4.2-develop.3-darwin-arm64.tar.gz"
      sha256 "3478412190c46cdee574c645a0d0fbf388cee6510f6a2bfaae63195cb81da287"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.3/punq-dev-v1.4.2-develop.3-darwin-amd64.tar.gz"
      sha256 "3f4aa5a06b285aa1658bd3614a4cfb9ecfd5300e6d83d4c217916e31919e64c3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.3/punq-dev-v1.4.2-develop.3-linux-amd64.tar.gz"
        sha256 "9501223fd4baafa0307d7375e1bdc0329d6cba71cf5c90bcc82f78572134e0cd"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.3/punq-dev-v1.4.2-develop.3-linux-386.tar.gz"
        sha256 "0ebf1539ed22d0b5a53db11a35a9eeb9d52a94bc87378fe78eb39fc2dd9e1acd"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.3/punq-dev-v1.4.2-develop.3-linux-arm64.tar.gz"
        sha256 "691fb81406afe53bc04804bcbd9c5af4ceac708b329898a11e958a76ba49f309"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.3/punq-dev-v1.4.2-develop.3-linux-arm.tar.gz"
        sha256 "47b88d78b28dbbe4497eafa44a4a35b14943535b82117dd6a82c30d9f76117ce"
      end
    end
  end
  
  version "1.4.2-develop.3"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.2-develop.3-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.2-develop.3-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.2-develop.3-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.2-develop.3-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.2-develop.3-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.2-develop.3-linux-arm" => "punq-dev"
      end
    end
  end
end
end
