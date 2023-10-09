class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.5/punq-dev-v1.4.0-develop.5-darwin-arm64.tar.gz"
      sha256 "969486660dfebba3bec0c815614d8fd447442ce5f9116d342ed810c2a110b8eb"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.5/punq-dev-v1.4.0-develop.5-darwin-amd64.tar.gz"
      sha256 "70121a390e5f3e17d0a08eadf9c466c36c529983afb2a26dd8a1ae7acdb3226e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.5/punq-dev-v1.4.0-develop.5-linux-amd64.tar.gz"
        sha256 "3f3b54444f353fafbec67a10f4d1e83c5442775f1c43924a04f74b641bf0e293"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.5/punq-dev-v1.4.0-develop.5-linux-386.tar.gz"
        sha256 "73b912aa29e4326d82cd619529ca77059d7907c6c797b0b5d866bc2b27d08bca"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.5/punq-dev-v1.4.0-develop.5-linux-arm64.tar.gz"
        sha256 "c23e05fbcdd72766d6b950b2e440a29ac684358d8344c860a0d641fdb30a5a1d"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.5/punq-dev-v1.4.0-develop.5-linux-arm.tar.gz"
        sha256 "7d79b59c6ba6310efe42e85c5cf776be66b581494a1e5b331164ffa23c467b09"
      end
    end
  end
  
  version "1.4.0-develop.5"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.0-develop.5-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.0-develop.5-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.0-develop.5-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.0-develop.5-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.0-develop.5-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.0-develop.5-linux-arm" => "punq-dev"
      end
    end
  end
end
end
