class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.7/punq-dev-v1.5.0-develop.7-darwin-arm64.tar.gz"
      sha256 "a89046ef875a445d2027f7f041346fb6813b21a60485b1fc525fa466eb57b072"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.7/punq-dev-v1.5.0-develop.7-darwin-amd64.tar.gz"
      sha256 "e85dbcb8730a6dadfe967766dfe85b99c904ed47f7a9c6bcd65a48376772ed4e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.7/punq-dev-v1.5.0-develop.7-linux-amd64.tar.gz"
        sha256 "652c14625db0da9d29cf44f6c83ab324a3f452f9b74836e1abe396da2232bfb2"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.7/punq-dev-v1.5.0-develop.7-linux-386.tar.gz"
        sha256 "e4c72c63216f65d57c78e94b1b19ac4a3752993638ffd15598510ca83eb3cdd1"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.7/punq-dev-v1.5.0-develop.7-linux-arm64.tar.gz"
        sha256 "cd870f54186ca29c9371f740d4fc78b79e62d1ab4512ab11d6017f0928774bf0"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.7/punq-dev-v1.5.0-develop.7-linux-arm.tar.gz"
        sha256 "df42d51e65dab952d8c8ee83984e1199c4989a63b9c40b1cb1cd9931e93fb9be"
      end
    end
  end
  
  version "1.5.0-develop.7"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.7-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.7-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.7-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.7-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.7-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.7-linux-arm" => "punq-dev"
      end
    end
  end
end
end
