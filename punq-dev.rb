class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.38/punq-dev-v1.5.0-develop.38-darwin-arm64.tar.gz"
      sha256 "5dcee1f6cdc837c0307c09bcf10082fb946a7ca56bd8dc665503b787b043dd57"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.38/punq-dev-v1.5.0-develop.38-darwin-amd64.tar.gz"
      sha256 "57acbcbe6bfa8861c9894c6926b024ea2bf7eef0d30b6e6fb5b73270424758bb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.38/punq-dev-v1.5.0-develop.38-linux-amd64.tar.gz"
        sha256 "82398a96917af42d387b12d5f2a5962901e2f251f4c8107d2bf481a9f9ebafe1"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.38/punq-dev-v1.5.0-develop.38-linux-386.tar.gz"
        sha256 "a50ff9298463dab04583405d650d2eb3eb2148e3f1cfa0b9043a93476f281429"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.38/punq-dev-v1.5.0-develop.38-linux-arm64.tar.gz"
        sha256 "1ec6e31f811bd58f9b98a6645fc21f51164aaa36d1cc831bbf337147960f34a8"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.38/punq-dev-v1.5.0-develop.38-linux-arm.tar.gz"
        sha256 "5894e1de3538c8ec7cb0c42acfcf396e89282d3a4d6ba5074b1438d55006d37b"
      end
    end
  end
  
  version "1.5.0-develop.38"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.38-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.38-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.38-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.38-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.38-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.38-linux-arm" => "punq-dev"
      end
    end
  end
end
end
