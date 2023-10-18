class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.8/punq-dev-v1.4.2-develop.8-darwin-arm64.tar.gz"
      sha256 "9e04ab1a8e303054c23a48c4deb906fcaadc48b801cb14c4f51144d653024af5"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.8/punq-dev-v1.4.2-develop.8-darwin-amd64.tar.gz"
      sha256 "86f2155c40e557e14ae6796e17e1c2f3bb2876054addffb7f42779cead1faacc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.8/punq-dev-v1.4.2-develop.8-linux-amd64.tar.gz"
        sha256 "d0f14977346476bf55aebde0ff5f602a43b017450b6bfe6a5f8c66dd66aef0bf"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.8/punq-dev-v1.4.2-develop.8-linux-386.tar.gz"
        sha256 "6711b1eeabdefc0403a7c55e353444d189ccc3dd12cd49abbdb16d58364e91bd"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.8/punq-dev-v1.4.2-develop.8-linux-arm64.tar.gz"
        sha256 "dce207d7fff1d3c86d3ad00691f25736380ce6282ad7404271cf05895cb8e207"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.8/punq-dev-v1.4.2-develop.8-linux-arm.tar.gz"
        sha256 "a2f40f4eee9f5fe75e9fe40bc1c4ea34c08976bdd129af89b6ec66ad09207d90"
      end
    end
  end
  
  version "1.4.2-develop.8"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.2-develop.8-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.2-develop.8-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.2-develop.8-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.2-develop.8-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.2-develop.8-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.2-develop.8-linux-arm" => "punq-dev"
      end
    end
  end
end
end
