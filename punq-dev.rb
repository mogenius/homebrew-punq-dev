class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.34/punq-dev-v1.5.0-develop.34-darwin-arm64.tar.gz"
      sha256 "1d0e46a617cee285d7ebf172d83edc6568af3170cc9b3fcafe8790db4c43bbdb"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.34/punq-dev-v1.5.0-develop.34-darwin-amd64.tar.gz"
      sha256 "b43be002a0a1b053aaf2118b0a79d58c6fa8e87fcf95159b59f428bcc95064cd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.34/punq-dev-v1.5.0-develop.34-linux-amd64.tar.gz"
        sha256 "2e1b05386d9914ce0ba1e58ebc4acfcd096a09f71f2b7315e7a743582ffc934e"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.34/punq-dev-v1.5.0-develop.34-linux-386.tar.gz"
        sha256 "f294894895328a673150e559e6c4b4c51d607acba80230efddeb0fb1fbc5fb7e"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.34/punq-dev-v1.5.0-develop.34-linux-arm64.tar.gz"
        sha256 "b820594e57eb1376bc8ae6dcb1f7e4e0207e7a2dd21f6b40437d88fcc2d53353"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.34/punq-dev-v1.5.0-develop.34-linux-arm.tar.gz"
        sha256 "b970ee2c3173d9473c4fda0ac72477d9b5c45a404f237f3aab738c807bf9d730"
      end
    end
  end
  
  version "1.5.0-develop.34"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.34-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.34-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.34-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.34-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.34-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.34-linux-arm" => "punq-dev"
      end
    end
  end
end
end
