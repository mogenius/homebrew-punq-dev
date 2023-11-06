class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.13/punq-dev-v1.5.0-develop.13-darwin-arm64.tar.gz"
      sha256 "8e5c01b041c1f4317eb66862b7401a29a1c88e8be697ae3886b3b7ea27e42826"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.13/punq-dev-v1.5.0-develop.13-darwin-amd64.tar.gz"
      sha256 "3ead3dba974c3766b6bd7747bf3571554779480df7d8cc11c5ad9593dcb36099"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.13/punq-dev-v1.5.0-develop.13-linux-amd64.tar.gz"
        sha256 "416180115eba87c69f29e163bc6c9e387d12bd7eec4b304e925db2cd42b7e585"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.13/punq-dev-v1.5.0-develop.13-linux-386.tar.gz"
        sha256 "a4631c59cc747d9ee3dbe3a9ca217979ce10ecdb922a4e9beea6c085a1ca8045"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.13/punq-dev-v1.5.0-develop.13-linux-arm64.tar.gz"
        sha256 "ce8cee9460a4beeb1311fa183a9bcd800ddbc44f0a191ced249ca62cd5e266b9"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.13/punq-dev-v1.5.0-develop.13-linux-arm.tar.gz"
        sha256 "bfcbb471d35d28ccb8eb09f452a9e5ea5a2bf19310eac2f45db68c0e1c7ab2c9"
      end
    end
  end
  
  version "1.5.0-develop.13"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.13-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.13-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.13-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.13-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.13-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.13-linux-arm" => "punq-dev"
      end
    end
  end
end
end
