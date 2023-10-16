class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.4/punq-dev-v1.4.2-develop.4-darwin-arm64.tar.gz"
      sha256 "f990ad0d9db9b0cc60132a53da4d824a64d499c4a28ca2b5edbe4c6ef752ac25"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.4/punq-dev-v1.4.2-develop.4-darwin-amd64.tar.gz"
      sha256 "d99a9479ae597c51646589dfda71e92b99f5a4e417ffaa763f43af9054eede3d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.4/punq-dev-v1.4.2-develop.4-linux-amd64.tar.gz"
        sha256 "36f18ec278403fedc326b39da0e3f56f3a8dd360647c8e4263c56813ef233669"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.4/punq-dev-v1.4.2-develop.4-linux-386.tar.gz"
        sha256 "7285dd0172fdb13454ee9837061b72b190459541f544857d7a3a9db67dc07faf"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.4/punq-dev-v1.4.2-develop.4-linux-arm64.tar.gz"
        sha256 "786143562ce9d447b5d60ce70099ee206005840d7c4750c7791f48c7cbff3fd9"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.4/punq-dev-v1.4.2-develop.4-linux-arm.tar.gz"
        sha256 "c086f80c1022d806010d6daa9e0b9ce34e3314eeb4e35483c97c078318510651"
      end
    end
  end
  
  version "1.4.2-develop.4"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.2-develop.4-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.2-develop.4-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.2-develop.4-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.2-develop.4-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.2-develop.4-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.2-develop.4-linux-arm" => "punq-dev"
      end
    end
  end
end
end
