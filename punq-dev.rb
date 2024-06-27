class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.71/punq-dev-v1.5.0-develop.71-darwin-arm64.tar.gz"
      sha256 "841ecd0b3440107187d1ca3a89a1ca1cb3d9e856b014dcd6a45279b7a53bb8e5"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.71/punq-dev-v1.5.0-develop.71-darwin-amd64.tar.gz"
      sha256 "7b7c86859e8846867d37bccbb8a66ecf544c0a5782c2ac14ffc50598e129c412"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.71/punq-dev-v1.5.0-develop.71-linux-amd64.tar.gz"
        sha256 "40bcd87231500b259839d04040b3ebaceb0897ea690f228145ada3cc0a1f7680"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.71/punq-dev-v1.5.0-develop.71-linux-386.tar.gz"
        sha256 "2f53990342dd65f4ed80a0d762aca7880448cc0060767582882aca9706042a89"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.71/punq-dev-v1.5.0-develop.71-linux-arm64.tar.gz"
        sha256 "40a106f059bd5cab47733888f7ac750b0445d2e9aaa1a609660621c4710cf827"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.71/punq-dev-v1.5.0-develop.71-linux-arm.tar.gz"
        sha256 "76bc6e7be290643704fbce29da74e04d26f881b4b8f8b93fb2914d2f2cd4401a"
      end
    end
  end
  
  version "1.5.0-develop.71"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.71-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.71-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.71-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.71-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.71-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.71-linux-arm" => "punq-dev"
      end
    end
  end
end
end
