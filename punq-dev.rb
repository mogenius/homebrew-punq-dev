class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.2/punq-dev-v1.4.9-develop.2-darwin-arm64.tar.gz"
      sha256 "110da4005efa19f0430a75d7e8d964c5b853e398e3ddbfbcaac1fc16701e9c28"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.2/punq-dev-v1.4.9-develop.2-darwin-amd64.tar.gz"
      sha256 "1cf443dcbe2e3dc7eb7d37360fa1469904af5caca0f89845bfb1660d5db85c4d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.2/punq-dev-v1.4.9-develop.2-linux-amd64.tar.gz"
        sha256 "a378512bcabb3d25d9799f532b083c564603daeb78659d624981c49db9dd3cee"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.2/punq-dev-v1.4.9-develop.2-linux-386.tar.gz"
        sha256 "8c84c2fb4cdddea44b2805856c112b953161d2e707d20637e51ea51af78968a2"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.2/punq-dev-v1.4.9-develop.2-linux-arm64.tar.gz"
        sha256 "325a6c8fbe418b14743cf4fe397f971226fe062b4ead9e1d67d2ccede4d99e36"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.2/punq-dev-v1.4.9-develop.2-linux-arm.tar.gz"
        sha256 "ace504f1a86cd04c9f5d6693217f7097275cfbace8251a17029dcff841f8047f"
      end
    end
  end
  
  version "1.4.9-develop.2"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.9-develop.2-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.9-develop.2-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.9-develop.2-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.9-develop.2-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.9-develop.2-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.9-develop.2-linux-arm" => "punq-dev"
      end
    end
  end
end
end
