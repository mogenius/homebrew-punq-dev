class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.1/punq-dev-v1.4.0-develop.1-darwin-arm64.tar.gz"
      sha256 "b5d8c2777f93f4d18b50587a5b7411de7e4d552ad420ef3139d783e4dd6a1052"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.1/punq-dev-v1.4.0-develop.1-darwin-amd64.tar.gz"
      sha256 "b59dad4f3cc436201a7cc32d54a360458df2cbb9cbc9df8fdfdb24b484ccc929"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.1/punq-dev-v1.4.0-develop.1-linux-amd64.tar.gz"
        sha256 "4a8ab6ab86e9c6a5e5756f418cbce64c43e2b2e6506237383a57f58af64ed2c6"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.1/punq-dev-v1.4.0-develop.1-linux-386.tar.gz"
        sha256 "bdc3ca10135d9fb31a65e0646a7d1da0883fe72e38989ff54b8f879d3e330274"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.1/punq-dev-v1.4.0-develop.1-linux-arm64.tar.gz"
        sha256 "958792ea0276a414237e05f505be58e10067a662e4e6b3615b74b3df7543705b"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.1/punq-dev-v1.4.0-develop.1-linux-arm.tar.gz"
        sha256 "2a6ce82d361b14f9472d1a19922049214ae7749ec4c7cd4b781d5170bcc84669"
      end
    end
  end
  
  version "1.4.0-develop.1"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.0-develop.1-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.0-develop.1-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.0-develop.1-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.0-develop.1-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.0-develop.1-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.0-develop.1-linux-arm" => "punq-dev"
      end
    end
  end
end
end
