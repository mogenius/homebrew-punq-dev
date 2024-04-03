class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.60/punq-dev-v1.5.0-develop.60-darwin-arm64.tar.gz"
      sha256 "ea303ede57f858aa0a3e80725c445ff2bbee0259280a1f5ae7d7da6f33c54ffe"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.60/punq-dev-v1.5.0-develop.60-darwin-amd64.tar.gz"
      sha256 "ede092fe22a4c94004b4f49fd6282ff5d77a1018298e546a9d823fda7716151b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.60/punq-dev-v1.5.0-develop.60-linux-amd64.tar.gz"
        sha256 "6f7cbd42a42b383d84ed49cd9ad82722ddc1d6d191fd6a1970ad4b7babbbeaf0"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.60/punq-dev-v1.5.0-develop.60-linux-386.tar.gz"
        sha256 "bed2dbf95972ea20d28711fdcc80ecae97da088b6df418bd7342a0c5774b62d8"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.60/punq-dev-v1.5.0-develop.60-linux-arm64.tar.gz"
        sha256 "3ffc63984c1e0ec36f9d88f3d379a315a91d1fff2eb42506571cc3e0b2ec2a7f"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.60/punq-dev-v1.5.0-develop.60-linux-arm.tar.gz"
        sha256 "c770c1e9c076c86d997b95bb9d0297d36785765e850a2137005b7d3d62b46e1d"
      end
    end
  end
  
  version "1.5.0-develop.60"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.60-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.60-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.60-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.60-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.60-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.60-linux-arm" => "punq-dev"
      end
    end
  end
end
end
