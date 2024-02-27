class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.51/punq-dev-v1.5.0-develop.51-darwin-arm64.tar.gz"
      sha256 "b584a604651d6f9cc17acb482609c8a59cdb4bcfd16ce2e7943aa7cda718478d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.51/punq-dev-v1.5.0-develop.51-darwin-amd64.tar.gz"
      sha256 "e77aac27bfecbe591e884c151c1a61b3c72f833efb36d78e2265b5b291c00ff1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.51/punq-dev-v1.5.0-develop.51-linux-amd64.tar.gz"
        sha256 "6b0f3ff264fc85c1c809e18900e6a1c4e9fd6c78f320935f7fbe14d739dc3381"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.51/punq-dev-v1.5.0-develop.51-linux-386.tar.gz"
        sha256 "a7c5bfcec44896a1afd8e9e6adeb9703ba0fa4066fbdf67b50d163c6ee014d08"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.51/punq-dev-v1.5.0-develop.51-linux-arm64.tar.gz"
        sha256 "cee4af442de6bd6e0c5e578dafb982574a48554c3af5f06ab2483cc66a9f93bf"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.51/punq-dev-v1.5.0-develop.51-linux-arm.tar.gz"
        sha256 "b9f662a7a51747211c0977d1810f73d802265f212944f5c6bfca1f096c3d16d4"
      end
    end
  end
  
  version "1.5.0-develop.51"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.51-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.51-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.51-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.51-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.51-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.51-linux-arm" => "punq-dev"
      end
    end
  end
end
end
