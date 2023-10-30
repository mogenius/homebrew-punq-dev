class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.3/punq-dev-v1.5.0-develop.3-darwin-arm64.tar.gz"
      sha256 "c3102319f5d89dea26f4efcd39b4741a413c08bc159aaa4534c5ab891cad2fc0"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.3/punq-dev-v1.5.0-develop.3-darwin-amd64.tar.gz"
      sha256 "526c525803da4e72ec25fb4aa94d60d83b7122f533b2012196e7ea446b276236"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.3/punq-dev-v1.5.0-develop.3-linux-amd64.tar.gz"
        sha256 "24b64fe202688a8acd3e5777ad7eb460b4a2f91673dc55dfc8766a4f2275c37a"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.3/punq-dev-v1.5.0-develop.3-linux-386.tar.gz"
        sha256 "22886c33b6857ca41c5441ff2b2c4825953610e91ff4bbbb07c06d38cdc97eb9"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.3/punq-dev-v1.5.0-develop.3-linux-arm64.tar.gz"
        sha256 "ee84e7fe9f2c01497e8ef33deb1acef7c5909932bdf8902c604978967c153cc6"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.3/punq-dev-v1.5.0-develop.3-linux-arm.tar.gz"
        sha256 "96460917f668e7c85794124c6c00079ffb3f41c519bec64d7d7073915940e1ea"
      end
    end
  end
  
  version "1.5.0-develop.3"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.3-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.3-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.3-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.3-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.3-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.3-linux-arm" => "punq-dev"
      end
    end
  end
end
end
