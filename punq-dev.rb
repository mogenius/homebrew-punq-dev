class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.45/punq-dev-v1.5.0-develop.45-darwin-arm64.tar.gz"
      sha256 "c636cfe17f7991621323ac94059a3fb9c6e1535122b127227c0f03223c5e1210"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.45/punq-dev-v1.5.0-develop.45-darwin-amd64.tar.gz"
      sha256 "86822f432ca8fc49535208c022a67096da96c0cab0093019d621b460e16bbc1b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.45/punq-dev-v1.5.0-develop.45-linux-amd64.tar.gz"
        sha256 "f014dc5aa90cce3fbb0390e6f7d91da77be6fe22e17522f32bfc3dd7ddcb9246"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.45/punq-dev-v1.5.0-develop.45-linux-386.tar.gz"
        sha256 "c9d1d2f7186817128a7f52407497b0ec849a8056cf96687733c7d47e66110393"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.45/punq-dev-v1.5.0-develop.45-linux-arm64.tar.gz"
        sha256 "db8d28420734aef4faa3a23d41992f410368f33c33cdfea07902829f7469851a"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.45/punq-dev-v1.5.0-develop.45-linux-arm.tar.gz"
        sha256 "b33aba246e52b1c7437dd3b8459564bb06cfe94ba1a60cdcefb888dd3f56b96e"
      end
    end
  end
  
  version "1.5.0-develop.45"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.45-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.45-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.45-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.45-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.45-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.45-linux-arm" => "punq-dev"
      end
    end
  end
end
end
