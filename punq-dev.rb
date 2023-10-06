class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.34/punq-dev-v1.3.0-develop.34-darwin-arm64.tar.gz"
      sha256 "691d855359713f30bb86cd7f0b1e639433969748a5eee6cd087185aa35cbf678"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.34/punq-dev-v1.3.0-develop.34-darwin-amd64.tar.gz"
      sha256 "e127145791511522cfd9a01a82b5990b8dbb4c7381ec9a3bd571e5c81b893b05"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.34/punq-dev-v1.3.0-develop.34-linux-amd64.tar.gz"
        sha256 "e87501c9fe2e426825572ca65e039f6e73bebef1623818e4ec14e8d7cee99638"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.34/punq-dev-v1.3.0-develop.34-linux-386.tar.gz"
        sha256 "2a5f696b5cda257b39711c676b698f55d4b6d6951ff7988df970f702f075029d"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.34/punq-dev-v1.3.0-develop.34-linux-arm64.tar.gz"
        sha256 "8225a3bda897f21f1c8805123686548bb21fe6c772c13ae9a0828dbd3c3b261c"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.34/punq-dev-v1.3.0-develop.34-linux-arm.tar.gz"
        sha256 "539885945b66e9f616141615f802adbf2266617be83ea21d1026e92b196e3739"
      end
    end
  end
  
  version "1.3.0-develop.34"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.34-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.34-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.34-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.34-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.34-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.34-linux-arm" => "punq-dev"
      end
    end
  end
end
end
