class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.15-dev/punq-dev-v1.3.0-develop.15-dev-darwin-arm64.tar.gz"
      sha256 "28f5d29660625330a770c04ec0d5d39a4a0056a0b3c18129af84c509d499133c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.15-dev/punq-dev-v1.3.0-develop.15-dev-darwin-amd64.tar.gz"
      sha256 "f9c4962a4c223b5313ab650d0849b7912aaa43be20ac727813afb04b1e8ccc6b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.15-dev/punq-dev-v1.3.0-develop.15-dev-linux-amd64.tar.gz"
        sha256 "4416f6ae4e0a2f8988dcefd363df62ce34f447382c77965888ecbca39e63ea53"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.15-dev/punq-dev-v1.3.0-develop.15-dev-linux-386.tar.gz"
        sha256 "7a1c1363abc6d16649915c0799bd22dae135aa648f3cb5535737ed8df7cc58d2"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.15-dev/punq-dev-v1.3.0-develop.15-dev-linux-arm64.tar.gz"
        sha256 "d9a2c888be7096c8f3199d7102db3b61150bdc4a9d394ef267a074d31ac9a7e5"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.15-dev/punq-dev-v1.3.0-develop.15-dev-linux-arm.tar.gz"
        sha256 "c508260b139c7e8fe19c89f1c297aae6c786d37cb10e985792f2efd2cc409e65"
      end
    end
  end
  
  version "1.3.0-develop.15-dev"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.15-dev-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.15-dev-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.15-dev-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.15-dev-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.15-dev-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.15-dev-linux-arm" => "punq-dev"
      end
    end
  end
end
end
