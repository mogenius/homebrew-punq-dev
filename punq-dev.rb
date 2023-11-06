class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.10/punq-dev-v1.5.0-develop.10-darwin-arm64.tar.gz"
      sha256 "1c7a196f861e64f50fcce59bc757089871966cb138f166aac2e124ab0fb1b010"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.10/punq-dev-v1.5.0-develop.10-darwin-amd64.tar.gz"
      sha256 "c5d37eacaba8ffb7b2ad5bbe383d269cc42e2f0b6624f2d495a77b469cc41d64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.10/punq-dev-v1.5.0-develop.10-linux-amd64.tar.gz"
        sha256 "e3bfd536a4a74c503fa898ef54fb8195ec0d6edced75130cc98b7d6b1eb0160e"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.10/punq-dev-v1.5.0-develop.10-linux-386.tar.gz"
        sha256 "8ec59897247faefb53c95c536818a7addc30448c5548248f2a32adef350cad8c"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.10/punq-dev-v1.5.0-develop.10-linux-arm64.tar.gz"
        sha256 "44dcb49c93cdf95258607647a83c8160d70b9a8fbf48ef9c1004755140ddc65c"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.10/punq-dev-v1.5.0-develop.10-linux-arm.tar.gz"
        sha256 "c6f3ed3d3edd4a39fdf1a1b3b30de8629bf4ccfae11e55cfce72a1fb043a3438"
      end
    end
  end
  
  version "1.5.0-develop.10"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.10-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.10-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.10-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.10-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.10-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.10-linux-arm" => "punq-dev"
      end
    end
  end
end
end
