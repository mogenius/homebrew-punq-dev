class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.2/punq-dev-v1.4.2-develop.2-darwin-arm64.tar.gz"
      sha256 "912c3d3e7d6fcf5a7381a2a16a2bc42c0c998aa8a1351c76a6a91d8c49901020"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.2/punq-dev-v1.4.2-develop.2-darwin-amd64.tar.gz"
      sha256 "b9aa10419a3733958f4c752ac436463608b438974e23f868ade13677ec576e87"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.2/punq-dev-v1.4.2-develop.2-linux-amd64.tar.gz"
        sha256 "7ea29746030d89231b494e254688e2b60a4ccea6aadee49f0842c911aa720c74"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.2/punq-dev-v1.4.2-develop.2-linux-386.tar.gz"
        sha256 "a920a33651afa89f5bc586e3f24349225bcb44161a36cb1e955f152619813c3a"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.2/punq-dev-v1.4.2-develop.2-linux-arm64.tar.gz"
        sha256 "6458f8fe453c53323f982abec4d5b691cbd78faa44fab3ec458acf49385c75f2"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.2/punq-dev-v1.4.2-develop.2-linux-arm.tar.gz"
        sha256 "3094b5a3e825037bcd1cd926b6cc248d72ba26fb058e3cfeaa0018ccbfec33a0"
      end
    end
  end
  
  version "1.4.2-develop.2"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.2-develop.2-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.2-develop.2-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.2-develop.2-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.2-develop.2-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.2-develop.2-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.2-develop.2-linux-arm" => "punq-dev"
      end
    end
  end
end
end
