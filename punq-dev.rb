class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.32/punq-dev-v1.3.0-develop.32-darwin-arm64.tar.gz"
      sha256 "12504091f772c5a65c4135dfe94db363a749eb3fcd74de16d64556330c2a5b5d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.32/punq-dev-v1.3.0-develop.32-darwin-amd64.tar.gz"
      sha256 "30bfcdf4ce0d818eec0a250915aec58a964cf293d2eb049eba401d861b00213c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.32/punq-dev-v1.3.0-develop.32-linux-amd64.tar.gz"
        sha256 "61ab26b8b623e5067910d62831f9e6d195327190ce45ea408056c31167c142f1"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.32/punq-dev-v1.3.0-develop.32-linux-386.tar.gz"
        sha256 "73c89ed676409c69ef0d42896ae471b607bfd00490dec30b6bfb569f1c44bc25"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.32/punq-dev-v1.3.0-develop.32-linux-arm64.tar.gz"
        sha256 "ab0cbaf920714bc20f583281e5aeec5bed4d5df908c2d26e835d1545415e649e"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.32/punq-dev-v1.3.0-develop.32-linux-arm.tar.gz"
        sha256 "cfd773879d7032052c2858e3a1d86fe068710defeff06d54bf37529526b58bcc"
      end
    end
  end
  
  version "1.3.0-develop.32"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.32-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.32-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.32-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.32-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.32-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.32-linux-arm" => "punq-dev"
      end
    end
  end
end
end
