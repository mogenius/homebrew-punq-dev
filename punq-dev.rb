class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.35/punq-dev-v1.3.0-develop.35-darwin-arm64.tar.gz"
      sha256 "6af6b07d46aa7e92eec80d783e7c07b7eb2db214b0be526ab4ff6a1614b81e88"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.35/punq-dev-v1.3.0-develop.35-darwin-amd64.tar.gz"
      sha256 "d53163011a9b71b7fc5dc2c5e77edaee5f418d79a2732de47cbac1398eb383f1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.35/punq-dev-v1.3.0-develop.35-linux-amd64.tar.gz"
        sha256 "371df2c2d627affc74506c3387555e06d55e03a8f29ef373d445bd5ab7fa3eb2"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.35/punq-dev-v1.3.0-develop.35-linux-386.tar.gz"
        sha256 "a6783b5d160f96acdb17838e059b71dfb272637e707264ba1df1cd8371fd4209"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.35/punq-dev-v1.3.0-develop.35-linux-arm64.tar.gz"
        sha256 "265a34b3ecb67b07182f2826ae782e323086245d8c296f90b9834062ba0e917d"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.35/punq-dev-v1.3.0-develop.35-linux-arm.tar.gz"
        sha256 "079862b846800b0056d2d83972d933ec2dc43255ec5196f084456b0a962dd7ae"
      end
    end
  end
  
  version "1.3.0-develop.35"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.35-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.35-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.35-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.35-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.35-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.35-linux-arm" => "punq-dev"
      end
    end
  end
end
end
