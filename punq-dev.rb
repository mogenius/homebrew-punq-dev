class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.21/punq-dev-v1.3.0-develop.21-darwin-arm64.tar.gz"
      sha256 "fe93f7ce4848b4a5c371396c7db6bc70e30b47f37982af06ce687ddbb71bb470"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.21/punq-dev-v1.3.0-develop.21-darwin-amd64.tar.gz"
      sha256 "e1fbe66f8f2a11103264fdafd697316bb297b30d0faf60950511effc8e4d6461"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.21/punq-dev-v1.3.0-develop.21-linux-amd64.tar.gz"
        sha256 "2b4e5f6747c27ffcf36d5eeb006894b30aae70a27f630c9bc03e3177a7069e4c"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.21/punq-dev-v1.3.0-develop.21-linux-386.tar.gz"
        sha256 "81728dc264e0eba4383dcd71cc8f2aa7f906ea114f343f46b3b6a61027d97be3"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.21/punq-dev-v1.3.0-develop.21-linux-arm64.tar.gz"
        sha256 "3c3915a740488239c7590ff8dabd1eae54d0d26bfb2561c921a94a0a6f6fbaac"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.21/punq-dev-v1.3.0-develop.21-linux-arm.tar.gz"
        sha256 "def0e10907a443b65a6115fa353963f510833e3e1a4ed640d133d797399c772c"
      end
    end
  end
  
  version "1.3.0-develop.21"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.21-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.21-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.21-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.21-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.21-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.21-linux-arm" => "punq-dev"
      end
    end
  end
end
end
