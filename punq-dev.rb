class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.14/punq-dev-v1.5.0-develop.14-darwin-arm64.tar.gz"
      sha256 "9096e7bf21bbb8bfb7a2965f4bc61e80a0a22134cfb6c554a32e163bb0e310ff"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.14/punq-dev-v1.5.0-develop.14-darwin-amd64.tar.gz"
      sha256 "48a97ed138831c6562e3b21df89ec473050469db75bad610152e29a484f3f979"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.14/punq-dev-v1.5.0-develop.14-linux-amd64.tar.gz"
        sha256 "4ec26991a40e3a989d97c17c1b758a936698ed4c15ec12dbc12e12680bede244"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.14/punq-dev-v1.5.0-develop.14-linux-386.tar.gz"
        sha256 "617fda56d2f6574110eab17e6fdf08cb1d426ea202dea9d3397dea09fca7a329"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.14/punq-dev-v1.5.0-develop.14-linux-arm64.tar.gz"
        sha256 "10474442769a10847ed911c5f52188449f4743b0117077ddf77f972d6edf4790"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.14/punq-dev-v1.5.0-develop.14-linux-arm.tar.gz"
        sha256 "3e19a6610d1d0c8d608bd468b76be5a2d8b7c65f21afb4f71404c96e753b1a12"
      end
    end
  end
  
  version "1.5.0-develop.14"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.14-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.14-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.14-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.14-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.14-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.14-linux-arm" => "punq-dev"
      end
    end
  end
end
end
