class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.5-dev/punq-dev-v1.3.0-develop.5-dev-darwin-arm64.tar.gz"
      sha256 "5af2e13437b9eb42fc6fae37dbfb6d3ae48884ad7329e5af4b7ecf42db476567"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.5-dev/punq-dev-v1.3.0-develop.5-dev-darwin-amd64.tar.gz"
      sha256 "9753fea2dfb213be6d2797392a6c73d45f2c8d93a91b0d8b60ab23f970d01c8d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.5-dev/punq-dev-v1.3.0-develop.5-dev-linux-amd64.tar.gz"
        sha256 "adcc7ef8bf70c4929abe946186ae219b05e0b43387b3a449f9a64fcd677aa1c4"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.5-dev/punq-dev-v1.3.0-develop.5-dev-linux-386.tar.gz"
        sha256 "e56975f05743171990105f76eca8d98e13428f2e3fc447affb6e9d82633562fe"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.5-dev/punq-dev-v1.3.0-develop.5-dev-linux-arm64.tar.gz"
        sha256 "4b6d69a47f979a70de2a4d084df6c1da268f2c6dff53aebb3e34226b0554b991"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.5-dev/punq-dev-v1.3.0-develop.5-dev-linux-arm.tar.gz"
        sha256 "f30075ecf50fc9d9290b81bc91c4888186afdd528915b971bd6b89a5074ab155"
      end
    end
  end
  
  version "1.3.0-develop.5-dev"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.5-dev-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.5-dev-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.5-dev-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.5-dev-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.5-dev-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.5-dev-linux-arm" => "punq-dev"
      end
    end
  end
end
end
