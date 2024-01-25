class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.47/punq-dev-v1.5.0-develop.47-darwin-arm64.tar.gz"
      sha256 "552d5bc8f8df110092b91df5226d07f9c0e2dfe41c30547dbb8999b4f48f8476"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.47/punq-dev-v1.5.0-develop.47-darwin-amd64.tar.gz"
      sha256 "d496072ff261a6db7667d46f01530273cdee033fef3e5f49578fdd31989daaf2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.47/punq-dev-v1.5.0-develop.47-linux-amd64.tar.gz"
        sha256 "e5b37189ce999fcae00c4edfc177b9ea6ee43cf8f1a0f1da929dab989d826b5e"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.47/punq-dev-v1.5.0-develop.47-linux-386.tar.gz"
        sha256 "5564b988a9b862a598bb56b8255314051d74e9f7229a619a17ba2791da030a05"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.47/punq-dev-v1.5.0-develop.47-linux-arm64.tar.gz"
        sha256 "160b5e8173bd4c62ef8c2dedf430ec54ca7ad721b44a89d96f4b2480b660eeef"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.47/punq-dev-v1.5.0-develop.47-linux-arm.tar.gz"
        sha256 "6b3e3a3c2dc67049eb22feea91946f6a85f4a5e0b99ce100ead0bf857c3c41f8"
      end
    end
  end
  
  version "1.5.0-develop.47"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.47-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.47-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.47-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.47-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.47-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.47-linux-arm" => "punq-dev"
      end
    end
  end
end
end
