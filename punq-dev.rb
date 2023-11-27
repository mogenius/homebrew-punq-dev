class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.30/punq-dev-v1.5.0-develop.30-darwin-arm64.tar.gz"
      sha256 "d85a81226d78c5f60f0535ea65c200bf206e58486bff009a78ee54a0ebcc9a01"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.30/punq-dev-v1.5.0-develop.30-darwin-amd64.tar.gz"
      sha256 "269bf74eb5fc3c2d86d332c7e1d4c404f57ff06abc125598fab4dafdf2246869"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.30/punq-dev-v1.5.0-develop.30-linux-amd64.tar.gz"
        sha256 "4378235d591de336bd0e89d515557883c7e901a51d4566ad51626d4696d72269"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.30/punq-dev-v1.5.0-develop.30-linux-386.tar.gz"
        sha256 "2ed696b70468058b3a25a577ebd71a5a5f16d8ecf5a08a57fee509f7792955cc"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.30/punq-dev-v1.5.0-develop.30-linux-arm64.tar.gz"
        sha256 "9d7fcd7f95aa90e9eaf72afd921eefce31d88c61daa8e415fe4dfdbba32bdb84"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.30/punq-dev-v1.5.0-develop.30-linux-arm.tar.gz"
        sha256 "1db55e726d5200244b930c3154b4c13f12201ed5fad7cbb47829a103f859b676"
      end
    end
  end
  
  version "1.5.0-develop.30"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.30-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.30-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.30-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.30-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.30-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.30-linux-arm" => "punq-dev"
      end
    end
  end
end
end
