class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.37/punq-dev-v1.3.0-develop.37-darwin-arm64.tar.gz"
      sha256 "ea44e6dd2383d55e349e0bd29d082cd575ff8ab47c1a89ae320637862ba71c76"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.37/punq-dev-v1.3.0-develop.37-darwin-amd64.tar.gz"
      sha256 "494c0326016baf3a909931e05f972bb7b3b76f3384fbd9cf6ccd739190c7a1f1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.37/punq-dev-v1.3.0-develop.37-linux-amd64.tar.gz"
        sha256 "6b1905b246633275c07a76a4e24736d07a69369bd5ad1ccfa24a47f947d78b9c"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.37/punq-dev-v1.3.0-develop.37-linux-386.tar.gz"
        sha256 "72ce45543d20dc08c567e8f2bbd3331ecffc667e844da74d5022850f855413d1"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.37/punq-dev-v1.3.0-develop.37-linux-arm64.tar.gz"
        sha256 "d840ab922cd5c018e2144f59a4a1e3bb50cf69fe8f0594de0eae301873ec6b28"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.37/punq-dev-v1.3.0-develop.37-linux-arm.tar.gz"
        sha256 "e711928b8956eece20c66276fa31cf043ff6b13a251ca1481163c96cf5a6cf9f"
      end
    end
  end
  
  version "1.3.0-develop.37"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.37-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.37-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.37-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.37-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.37-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.37-linux-arm" => "punq-dev"
      end
    end
  end
end
end
