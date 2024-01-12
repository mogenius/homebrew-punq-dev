class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.43/punq-dev-v1.5.0-develop.43-darwin-arm64.tar.gz"
      sha256 "3a98a91264d6af73af104c4878a9eac175f22fa43daa1216718f455dbdfeb2be"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.43/punq-dev-v1.5.0-develop.43-darwin-amd64.tar.gz"
      sha256 "9480c6798fcef0799c86fbae643da5342ec1f8186bdf558b8bba62bb97c145f4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.43/punq-dev-v1.5.0-develop.43-linux-amd64.tar.gz"
        sha256 "c8dc0bffb673df9199640770e742d3eeafbb444b17514404d0094b57ecbf5854"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.43/punq-dev-v1.5.0-develop.43-linux-386.tar.gz"
        sha256 "87413cef4657525c370c41eb507cf319b4e993bf07b94c6e41aba3daa90a4da8"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.43/punq-dev-v1.5.0-develop.43-linux-arm64.tar.gz"
        sha256 "439ee1ec1e0027deb28de376b36c0e31cad47237f11aa903210db6d80b4c005e"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.43/punq-dev-v1.5.0-develop.43-linux-arm.tar.gz"
        sha256 "0a40fb5f5a0165bf5bb6e05ee7ac9ad79840d8ba0b592b3451b70a5b8d228bfa"
      end
    end
  end
  
  version "1.5.0-develop.43"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.43-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.43-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.43-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.43-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.43-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.43-linux-arm" => "punq-dev"
      end
    end
  end
end
end
