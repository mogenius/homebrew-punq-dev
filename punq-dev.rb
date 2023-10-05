class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.25/punq-dev-v1.3.0-develop.25-darwin-arm64.tar.gz"
      sha256 "c6a2c816819b0a45bc5824e38d0719a4d605cba919a9500c9cd6b8fe37c57ad3"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.25/punq-dev-v1.3.0-develop.25-darwin-amd64.tar.gz"
      sha256 "3107eeb960b956acad521abcefc3c1b332b63eb38b99958d13053aa00eb4d986"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.25/punq-dev-v1.3.0-develop.25-linux-amd64.tar.gz"
        sha256 "f7643903d5d73eccb7e002dd47165ce7ac4d38b9409e5756dfe099a11c816023"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.25/punq-dev-v1.3.0-develop.25-linux-386.tar.gz"
        sha256 "ee2d806b84aca05acdbf32af8a710fe1e69dc170814bda97330276ed8c46629c"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.25/punq-dev-v1.3.0-develop.25-linux-arm64.tar.gz"
        sha256 "dfbb68d7f71ea27e36006279d74bcbb039413fca47c227755dc58057a8001d6a"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.25/punq-dev-v1.3.0-develop.25-linux-arm.tar.gz"
        sha256 "0126b46b331b19913e2b74f2fa5457b0763163873ec336a9d3b93487ea5f654b"
      end
    end
  end
  
  version "1.3.0-develop.25"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.25-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.25-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.25-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.25-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.25-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.25-linux-arm" => "punq-dev"
      end
    end
  end
end
end
