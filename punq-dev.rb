class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.6-dev/punq-dev-v1.3.0-develop.6-dev-darwin-arm64.tar.gz"
      sha256 "6becbcfcf43b554889fb591e48b054c03d0678f734673902805e7890e8ff1ed8"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.6-dev/punq-dev-v1.3.0-develop.6-dev-darwin-amd64.tar.gz"
      sha256 "ca75030a636b3de1f259df0735f711855d4a7f2243de9511a15b1da7bcd6dac4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.6-dev/punq-dev-v1.3.0-develop.6-dev-linux-amd64.tar.gz"
        sha256 "52302d4c693b911c13357e3d08aa8daeb79bb9119ae349ab754eb678a8c53eac"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.6-dev/punq-dev-v1.3.0-develop.6-dev-linux-386.tar.gz"
        sha256 "e502891d416e07b2da00cabcf99cda7945b3b540fa922386124bb10f551d366d"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.6-dev/punq-dev-v1.3.0-develop.6-dev-linux-arm64.tar.gz"
        sha256 "87c249f6fac3fb67c9fcb6b722e7d848bbb7626df76d275d2b05b728d2364d48"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.6-dev/punq-dev-v1.3.0-develop.6-dev-linux-arm.tar.gz"
        sha256 "cf2add007cab559d2d3818dd76d905744ee102501f33d615a8c6c8debcbd7915"
      end
    end
  end
  
  version "1.3.0-develop.6-dev"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.6-dev-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.6-dev-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.6-dev-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.6-dev-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.6-dev-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.6-dev-linux-arm" => "punq-dev"
      end
    end
  end
end
end
