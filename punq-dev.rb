class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.50/punq-dev-v1.5.0-develop.50-darwin-arm64.tar.gz"
      sha256 "1c5100d7247074c74bd7c6acc34b957d0b0b5aab47a44479215ef1ff6da20670"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.50/punq-dev-v1.5.0-develop.50-darwin-amd64.tar.gz"
      sha256 "7c552f8441c5e944ea05bfbf35c24b8a28aa0a4c5fe91de7d33be66cc4e31770"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.50/punq-dev-v1.5.0-develop.50-linux-amd64.tar.gz"
        sha256 "024b8bf935a592ce766ccb5f98418c032faddd598916c097ec0af9a579e13d8d"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.50/punq-dev-v1.5.0-develop.50-linux-386.tar.gz"
        sha256 "f4b66bdb0fa6227b32dc28845ea7e439c8b0ac061ee7d0364051103dbff55b2d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.50/punq-dev-v1.5.0-develop.50-linux-arm64.tar.gz"
        sha256 "90f5d899e6150c403662fab46c8d80217d20aa348476a302e0f68827bd79894a"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.50/punq-dev-v1.5.0-develop.50-linux-arm.tar.gz"
        sha256 "92b47eafcd0d3c392cb873304d0706bf58d37a2ed4cd363de6112e1b5310c86e"
      end
    end
  end
  
  version "1.5.0-develop.50"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.50-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.50-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.50-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.50-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.50-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.50-linux-arm" => "punq-dev"
      end
    end
  end
end
end
