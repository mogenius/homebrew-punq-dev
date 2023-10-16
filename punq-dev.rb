class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.5/punq-dev-v1.4.2-develop.5-darwin-arm64.tar.gz"
      sha256 "3eda4d9edb1b3873d1fe0b04b7b295880a053f76aaa29a6f40104a3b29c4b4f1"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.5/punq-dev-v1.4.2-develop.5-darwin-amd64.tar.gz"
      sha256 "496066fccd6f675e1afc39c58de1d27e94e9cffd745d395ceb949831b7c1e620"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.5/punq-dev-v1.4.2-develop.5-linux-amd64.tar.gz"
        sha256 "fb23477021407f682972d961952187e57a47d2b95a1f02eefadc20c3e1278806"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.5/punq-dev-v1.4.2-develop.5-linux-386.tar.gz"
        sha256 "d048403a65e114948b58dba8d8cbd237d937e739b8716958cbf0a0c75442af59"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.5/punq-dev-v1.4.2-develop.5-linux-arm64.tar.gz"
        sha256 "ca49fd998957bbfc3b827bfa7e3557b821a06117b7f8b282176b04de3ae9eab9"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.5/punq-dev-v1.4.2-develop.5-linux-arm.tar.gz"
        sha256 "a78c40df8f9f91afffac8369f74ba15df9efe31aa0f121b87bbb04069fef9978"
      end
    end
  end
  
  version "1.4.2-develop.5"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.2-develop.5-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.2-develop.5-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.2-develop.5-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.2-develop.5-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.2-develop.5-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.2-develop.5-linux-arm" => "punq-dev"
      end
    end
  end
end
end
