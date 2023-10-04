class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.19/punq-dev-v1.3.0-develop.19-darwin-arm64.tar.gz"
      sha256 "bb95dcbf5fd34cf4627368c0a1dd5bedc3ee2d599011f74d0cd51d1908e41a20"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.19/punq-dev-v1.3.0-develop.19-darwin-amd64.tar.gz"
      sha256 "e1dbed6e944eac1a18f987a836dba5e3340d837918440f371279e87c7217e6ab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.19/punq-dev-v1.3.0-develop.19-linux-amd64.tar.gz"
        sha256 "8dbeb7fe8659751920d59253c3b0da0cb98e0d4adf841055e6cf83a030ff3146"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.19/punq-dev-v1.3.0-develop.19-linux-386.tar.gz"
        sha256 "f25863297a9e6735575fbe2d7308fc0c36179c6c309622fc86495ef441bbc191"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.19/punq-dev-v1.3.0-develop.19-linux-arm64.tar.gz"
        sha256 "d26db3991ab5db2b2d0cc6463cdf5af6eb61b224d31aacd962d08c43fffd68f3"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.19/punq-dev-v1.3.0-develop.19-linux-arm.tar.gz"
        sha256 "9846976bcd5e3b60c4d4a71411c23bcb100941db6743a90122441eebc2a73bd6"
      end
    end
  end
  
  version "1.3.0-develop.19"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.19-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.19-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.19-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.19-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.19-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.19-linux-arm" => "punq-dev"
      end
    end
  end
end
end
