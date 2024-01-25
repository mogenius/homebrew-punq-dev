class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.46/punq-dev-v1.5.0-develop.46-darwin-arm64.tar.gz"
      sha256 "204729144591c0d5f6a6360a49eb04bf200cecf562c760e1125494784924baee"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.46/punq-dev-v1.5.0-develop.46-darwin-amd64.tar.gz"
      sha256 "dd853f8b3b0c9990f6b0b73018ea1466587ed4e614f76bdb18f63dfae34f346c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.46/punq-dev-v1.5.0-develop.46-linux-amd64.tar.gz"
        sha256 "5f22329cb290c0441df321b9072f550cef08cdf22688a154528ccacd33c163a9"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.46/punq-dev-v1.5.0-develop.46-linux-386.tar.gz"
        sha256 "8a22724f90321195f8f0c7c757ac9219787d1677335ceea0aef55e2fff50203d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.46/punq-dev-v1.5.0-develop.46-linux-arm64.tar.gz"
        sha256 "a4537622f2c553fa0772437104ff8e0e56f9cecea040805fb1ab2fc1fb2ebb40"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.46/punq-dev-v1.5.0-develop.46-linux-arm.tar.gz"
        sha256 "18a21ed828f9165aec61b2b910ff911be7d3ae2f058cbe52f51c9a47689b3fca"
      end
    end
  end
  
  version "1.5.0-develop.46"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.46-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.46-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.46-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.46-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.46-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.46-linux-arm" => "punq-dev"
      end
    end
  end
end
end
