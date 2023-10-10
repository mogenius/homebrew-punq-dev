class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.1/punq-dev-v1.4.2-develop.1-darwin-arm64.tar.gz"
      sha256 "2b9e39896949cf5f1dc10224663bb8d260c2c825e28b89057cf8427b60127bd4"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.1/punq-dev-v1.4.2-develop.1-darwin-amd64.tar.gz"
      sha256 "a133a01d2454852fda414c18a7b3777f5cea676adda0e4fdddd5f407822f3dcd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.1/punq-dev-v1.4.2-develop.1-linux-amd64.tar.gz"
        sha256 "8a28d9e407d42a9efba97200eb7b8b660579713d0762651f51ee4abf6e4fdd15"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.1/punq-dev-v1.4.2-develop.1-linux-386.tar.gz"
        sha256 "389f6ea024f17b580ccd2641711068353e82457389ce3708f9698ab3b69d4118"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.1/punq-dev-v1.4.2-develop.1-linux-arm64.tar.gz"
        sha256 "712adbe8be5521bf49c5d9e314135b754f899aa33980678ef2fcc06d1a3f3feb"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.1/punq-dev-v1.4.2-develop.1-linux-arm.tar.gz"
        sha256 "74f8bdd7dd4a59071590ae15504c874d89e3822844580ee5177f19514a2e102c"
      end
    end
  end
  
  version "1.4.2-develop.1"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.2-develop.1-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.2-develop.1-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.2-develop.1-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.2-develop.1-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.2-develop.1-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.2-develop.1-linux-arm" => "punq-dev"
      end
    end
  end
end
end
