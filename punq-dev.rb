class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.5/punq-dev-v1.4.9-develop.5-darwin-arm64.tar.gz"
      sha256 "687b49ee14f13a0986e8b7898e5bed942b67039801e7055bae16523668aea93c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.5/punq-dev-v1.4.9-develop.5-darwin-amd64.tar.gz"
      sha256 "17ec2aac2c6cf04aafeac1bc4cc8c9b0282c1cd829b5f410a0ebb940c718f790"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.5/punq-dev-v1.4.9-develop.5-linux-amd64.tar.gz"
        sha256 "24d1e166257b14b666b46738c80befc11489764ea15e1b6df27cd847c9c30c35"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.5/punq-dev-v1.4.9-develop.5-linux-386.tar.gz"
        sha256 "0b23e398a18861ae2285e4eb0221aa99e98e73085d0d966cb8beb4ba4563a5ab"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.5/punq-dev-v1.4.9-develop.5-linux-arm64.tar.gz"
        sha256 "f798546657911c0eab171e1e8276cc0a2ca9a44b72a24b4590bbf75967e59972"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.5/punq-dev-v1.4.9-develop.5-linux-arm.tar.gz"
        sha256 "544f3f44df505ccfc68e29b2b4b5f5cf8fd5cd5b2872796842365d434ceff2bf"
      end
    end
  end
  
  version "1.4.9-develop.5"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.9-develop.5-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.9-develop.5-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.9-develop.5-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.9-develop.5-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.9-develop.5-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.9-develop.5-linux-arm" => "punq-dev"
      end
    end
  end
end
end
