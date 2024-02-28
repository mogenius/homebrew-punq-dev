class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.59/punq-dev-v1.5.0-develop.59-darwin-arm64.tar.gz"
      sha256 "e0e5f3f16e6baee583da116f066bdcf789d9ad87bb1a403c7ff1ff9ef2d02745"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.59/punq-dev-v1.5.0-develop.59-darwin-amd64.tar.gz"
      sha256 "18880d058bcbb1ad190b6cc3769a45f1c23b794ba4198174b78c19cd204658d4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.59/punq-dev-v1.5.0-develop.59-linux-amd64.tar.gz"
        sha256 "d1933623522af9701d700a4543692f975c3b87378ae29931e468dd6516857e3d"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.59/punq-dev-v1.5.0-develop.59-linux-386.tar.gz"
        sha256 "04c8756f79a9e9844f93fec8763581feca94f9994296b82e22c4ace5cc9eabca"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.59/punq-dev-v1.5.0-develop.59-linux-arm64.tar.gz"
        sha256 "3ef4cdc35e71a6281782f7422336d2f62ed4d6fc75311430adddfd5ce4bdbdff"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.59/punq-dev-v1.5.0-develop.59-linux-arm.tar.gz"
        sha256 "43f81da453c2b5946f4e237a85bd0133c3979fe66218f01dffc477a4559cf67b"
      end
    end
  end
  
  version "1.5.0-develop.59"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.59-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.59-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.59-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.59-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.59-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.59-linux-arm" => "punq-dev"
      end
    end
  end
end
end
