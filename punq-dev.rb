class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.15/punq-dev-v1.5.0-develop.15-darwin-arm64.tar.gz"
      sha256 "5afb970decfc44e75460382e5b120164b66f02a5ac9a6848b959c6b12046ba7c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.15/punq-dev-v1.5.0-develop.15-darwin-amd64.tar.gz"
      sha256 "02dd953d489fcbf4c79253e4146611560bf549f9dd1f6d2338a19ba7a592269d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.15/punq-dev-v1.5.0-develop.15-linux-amd64.tar.gz"
        sha256 "9304e9d1c8424dd23c87c21991afcd8ed46b4c28e2a31b4acaacb3635263ce92"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.15/punq-dev-v1.5.0-develop.15-linux-386.tar.gz"
        sha256 "85af66b84a9e995cf6fbffb62e25a08467dd9c2bf61ced93494b826af929ddd3"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.15/punq-dev-v1.5.0-develop.15-linux-arm64.tar.gz"
        sha256 "2bb82871b50e01b8e3a0fa2a775c60051010a0eaa1c9c42828e6e4e6f0c4df49"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.15/punq-dev-v1.5.0-develop.15-linux-arm.tar.gz"
        sha256 "a1363466cdf0022a137a70c45632f7f86d9c8ec2ecd850dbcc2313feba3f3e80"
      end
    end
  end
  
  version "1.5.0-develop.15"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.15-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.15-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.15-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.15-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.15-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.15-linux-arm" => "punq-dev"
      end
    end
  end
end
end
