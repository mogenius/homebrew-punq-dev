class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.17/punq-dev-v1.3.0-develop.17-darwin-arm64.tar.gz"
      sha256 "fe60ec858c74bde4ff44cc15b60b101158ac265cd8e561b6606f09ff4e7e10be"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.17/punq-dev-v1.3.0-develop.17-darwin-amd64.tar.gz"
      sha256 "0a7f7aafcab69c5057cd242e96dbbef0a780a660989c5e1aa985e83b46ef657f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.17/punq-dev-v1.3.0-develop.17-linux-amd64.tar.gz"
        sha256 "36d157f031c08c66e82f4439e4938e3a0c8907215751d00c3e24fc703d8a376b"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.17/punq-dev-v1.3.0-develop.17-linux-386.tar.gz"
        sha256 "65bc60d46c9bb09d61e7f26667e4d183e675bf4ad22d151e1c74a39ab422345c"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.17/punq-dev-v1.3.0-develop.17-linux-arm64.tar.gz"
        sha256 "441d3fbf39b4ec095e7c7b163bf77fd32290bef134b316e0c6b7aac1083e5120"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.17/punq-dev-v1.3.0-develop.17-linux-arm.tar.gz"
        sha256 "428a8f76dd95d9fd1cba213a5ee25fb404a4084df3866cc0a7d7b222f5709dbb"
      end
    end
  end
  
  version "1.3.0-develop.17"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.17-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.17-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.17-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.17-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.17-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.17-linux-arm" => "punq-dev"
      end
    end
  end
end
end
