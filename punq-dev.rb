class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.7/punq-dev-v1.4.0-develop.7-darwin-arm64.tar.gz"
      sha256 "f44a528cb26bc650692697b952f85387554d94c4be4a8a44c7432682a7c1eb4b"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.7/punq-dev-v1.4.0-develop.7-darwin-amd64.tar.gz"
      sha256 "59d8f454c811effe06999a556c850a0bb75d3272ec632be06a7577dab906cc57"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.7/punq-dev-v1.4.0-develop.7-linux-amd64.tar.gz"
        sha256 "119e89885c09235cbd9baa854abac5a773dd42c52184ac9ae5d0b3a77358eb70"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.7/punq-dev-v1.4.0-develop.7-linux-386.tar.gz"
        sha256 "00a1c1e59669b1c07bd18b831f3e521fa859557ddd9d6c3bec50b63d8c0077dd"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.7/punq-dev-v1.4.0-develop.7-linux-arm64.tar.gz"
        sha256 "b265deef26c26851328eb168229444607bddd1637863204b6690f8bce412b2e9"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.7/punq-dev-v1.4.0-develop.7-linux-arm.tar.gz"
        sha256 "4246a0eca9f4ddabb782af22a64ca53fc7f826f7540f8e5e752bcb3061a7d19d"
      end
    end
  end
  
  version "1.4.0-develop.7"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.0-develop.7-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.0-develop.7-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.0-develop.7-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.0-develop.7-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.0-develop.7-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.0-develop.7-linux-arm" => "punq-dev"
      end
    end
  end
end
end
