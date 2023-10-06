class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.31/punq-dev-v1.3.0-develop.31-darwin-arm64.tar.gz"
      sha256 "0b32179a240586e33a6903b8b9650beac9e8d67a50b5f10bcfbc05316c3a933b"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.31/punq-dev-v1.3.0-develop.31-darwin-amd64.tar.gz"
      sha256 "61b15d9f1e65d2bbfa66947b94d2b45ad4b5b2626c074a74a70a02c8804ddc0f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.31/punq-dev-v1.3.0-develop.31-linux-amd64.tar.gz"
        sha256 "40c54bf1c8eac4e182ee26d936b0103d0709e7216ead728903b3d44537bcf432"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.31/punq-dev-v1.3.0-develop.31-linux-386.tar.gz"
        sha256 "293fec9ce685135ed083578285237b9584c6d3e9d29dcc77a45de7728f4e8069"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.31/punq-dev-v1.3.0-develop.31-linux-arm64.tar.gz"
        sha256 "e7be65567c9537ef7a406355142c8da5c86144b00f8422b89fa235c6767fe2ac"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.31/punq-dev-v1.3.0-develop.31-linux-arm.tar.gz"
        sha256 "2f6d7951a83a45fc6235e852f7ddaa770b78e65885c04c9392eaada702ade55f"
      end
    end
  end
  
  version "1.3.0-develop.31"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.31-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.31-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.31-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.31-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.31-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.31-linux-arm" => "punq-dev"
      end
    end
  end
end
end
