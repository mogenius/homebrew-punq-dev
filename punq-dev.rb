class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.56/punq-dev-v1.5.0-develop.56-darwin-arm64.tar.gz"
      sha256 "1713651a741e037018481c067e9b7799a8550f3d15f02ab14c7ff85894f0d194"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.56/punq-dev-v1.5.0-develop.56-darwin-amd64.tar.gz"
      sha256 "c10632f19d77963ce64cd06a72bcd66d767d4c4df61e0f5ecccfe3351975a930"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.56/punq-dev-v1.5.0-develop.56-linux-amd64.tar.gz"
        sha256 "2147b3fe8512572e23d9e6645eaccc6248251c8b2e7959c20d6f6f74f452f163"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.56/punq-dev-v1.5.0-develop.56-linux-386.tar.gz"
        sha256 "c46ff3fb6659921df466cf527a29c4fc17f225ae1d10afc4eba14652463338ee"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.56/punq-dev-v1.5.0-develop.56-linux-arm64.tar.gz"
        sha256 "cdb04d173b2f173a03290d7fb9e99e90435b260bcf0504b4bf35cb59eaef4efc"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.56/punq-dev-v1.5.0-develop.56-linux-arm.tar.gz"
        sha256 "0a451084a82e4d6f3c34cafae9b87f2ebd10553d8a6ae34ad4375131805d183b"
      end
    end
  end
  
  version "1.5.0-develop.56"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.56-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.56-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.56-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.56-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.56-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.56-linux-arm" => "punq-dev"
      end
    end
  end
end
end
