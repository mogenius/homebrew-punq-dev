class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.30/punq-dev-v1.3.0-develop.30-darwin-arm64.tar.gz"
      sha256 "e24d656cb3bb2d5862ce59ab1aa6adbffc896ec673a7f5b86c563c8a8a7ae119"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.30/punq-dev-v1.3.0-develop.30-darwin-amd64.tar.gz"
      sha256 "a292b9ada1ea45be48743aa92b148388be33592dd33a9af84b8ce57aaf8618ef"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.30/punq-dev-v1.3.0-develop.30-linux-amd64.tar.gz"
        sha256 "a3b6b3467e648f18f1386335fb92fcb009f3958fb48239c3edbdc441c8b3be62"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.30/punq-dev-v1.3.0-develop.30-linux-386.tar.gz"
        sha256 "6d33c21e629f1ba4d4f5473e7e91bf98f747bf185d59fed7ad849fa2b2599978"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.30/punq-dev-v1.3.0-develop.30-linux-arm64.tar.gz"
        sha256 "9e9e87e27debcb685f69f03a24c60f95dc0e7c10db58577bc9a713da1cf316a2"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.30/punq-dev-v1.3.0-develop.30-linux-arm.tar.gz"
        sha256 "c3d344a14a84b92f3697347fffb151ee457d13084b811e5b4da81ec23fe0edf7"
      end
    end
  end
  
  version "1.3.0-develop.30"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.30-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.30-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.30-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.30-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.30-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.30-linux-arm" => "punq-dev"
      end
    end
  end
end
end
