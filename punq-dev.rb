class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.14-dev/punq-dev-v1.3.0-develop.14-dev-darwin-arm64.tar.gz"
      sha256 "4947f2ed994607ab541c68dd8c0f81ba562790120cf13d0ae703ac910dd9ff3f"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.14-dev/punq-dev-v1.3.0-develop.14-dev-darwin-amd64.tar.gz"
      sha256 "aa6a377a36a642628422abdc4ee53ecd30fb0adc00d1aa33ee14d28253ad8c13"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.14-dev/punq-dev-v1.3.0-develop.14-dev-linux-amd64.tar.gz"
        sha256 "e9b0f06fa28d967e260c8d1b9397ec49f0df4bc11dea453a1a346489ff19cf63"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.14-dev/punq-dev-v1.3.0-develop.14-dev-linux-386.tar.gz"
        sha256 "3fa18749e043adcfb32f74f42e6f3aff84bf9632a8f827ba8a16036ed5ce9960"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.14-dev/punq-dev-v1.3.0-develop.14-dev-linux-arm64.tar.gz"
        sha256 "97b0a7afe7fa6cb0b5d61377d6c9f1a1ced0513f67c0c86fcfcc0378bdb60bfe"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.14-dev/punq-dev-v1.3.0-develop.14-dev-linux-arm.tar.gz"
        sha256 "8111b393af36934f565933e62390091ad27b15cd65dd21e9ae343c20d4ff790e"
      end
    end
  end
  
  version "1.3.0-develop.14-dev"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.14-dev-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.14-dev-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.14-dev-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.14-dev-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.14-dev-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.14-dev-linux-arm" => "punq-dev"
      end
    end
  end
end
end
