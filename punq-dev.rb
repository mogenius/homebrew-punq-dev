class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.10-dev/punq-dev-v1.3.0-develop.10-dev-darwin-arm64.tar.gz"
      sha256 "38cd5e04abbd04500daafb3bcaa5755d04aa0db5dbecd27628f3dd96b3002a42"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.10-dev/punq-dev-v1.3.0-develop.10-dev-darwin-amd64.tar.gz"
      sha256 "c9ad57f7d44708b7ce3f840d66dc2450cc79d749918569ae80e777e1f43da526"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.10-dev/punq-dev-v1.3.0-develop.10-dev-linux-amd64.tar.gz"
        sha256 "7476459fb091d86498fc7191410620b34892c35a64aed6f27d4e0e5f6e63f2f6"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.10-dev/punq-dev-v1.3.0-develop.10-dev-linux-386.tar.gz"
        sha256 "067792888898ba6dbd9a7bc5d6e7fa19eeb19c6af7abbfef47021e8f1805bb5a"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.10-dev/punq-dev-v1.3.0-develop.10-dev-linux-arm64.tar.gz"
        sha256 "7550edf4a01791885f0e3ff9842b7780907579a06366e2b8124048d6b8b890b3"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.10-dev/punq-dev-v1.3.0-develop.10-dev-linux-arm.tar.gz"
        sha256 "b7c89656be7f9a5bb77bc62c7ca7a9ee92338f6dfe97d5db5329f308b023a60a"
      end
    end
  end
  
  version "1.3.0-develop.10-dev"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.10-dev-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.10-dev-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.10-dev-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.10-dev-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.10-dev-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.10-dev-linux-arm" => "punq-dev"
      end
    end
  end
end
end
