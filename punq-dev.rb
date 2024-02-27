class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.52/punq-dev-v1.5.0-develop.52-darwin-arm64.tar.gz"
      sha256 "054e3cb05552b9f721b41ffd3ae306085f63bbfc285701ddf63e9581204c2469"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.52/punq-dev-v1.5.0-develop.52-darwin-amd64.tar.gz"
      sha256 "626aa1c32ac2a37ada66a5ff86463e2853c4f0ea3a3802bc486dbaf3763ee197"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.52/punq-dev-v1.5.0-develop.52-linux-amd64.tar.gz"
        sha256 "bee4e51517d33b7db9e3fdb2d873d61cca977fe3d358f5dad02b384dceae0493"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.52/punq-dev-v1.5.0-develop.52-linux-386.tar.gz"
        sha256 "aa67279a06235dc4551fc5e649a343b6cbee905febfc0f21698dfeeeef90ae2d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.52/punq-dev-v1.5.0-develop.52-linux-arm64.tar.gz"
        sha256 "8d9b20f3abf4b7505847e85af3da6db1ee5e3f72fd1c5fec263b310522225666"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.52/punq-dev-v1.5.0-develop.52-linux-arm.tar.gz"
        sha256 "a96acd71a3bea936e021bcbd03435856d4d3c4d3d52bf5582b110e19224af4b7"
      end
    end
  end
  
  version "1.5.0-develop.52"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.52-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.52-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.52-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.52-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.52-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.52-linux-arm" => "punq-dev"
      end
    end
  end
end
end
