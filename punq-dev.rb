class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.4-dev/punq-dev-v1.3.0-develop.4-dev-darwin-arm64.tar.gz"
      sha256 "2fbcfe7f29a263b1b6b19b7870b5d143f4eb542d7a3fc72386cde09970450a46"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.4-dev/punq-dev-v1.3.0-develop.4-dev-darwin-amd64.tar.gz"
      sha256 "b6ba930acd9d6f49f8a9da9300baf3d1dc41479168a690c24739c58a4c0be848"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.4-dev/punq-dev-v1.3.0-develop.4-dev-linux-amd64.tar.gz"
        sha256 "44cc9f3d557b9cec22c5c1132a4bf7e604637874e1f02f49928ee90c564aa37d"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.4-dev/punq-dev-v1.3.0-develop.4-dev-linux-386.tar.gz"
        sha256 "503b7537de56fa98388d6ad68edd65d8233896b3caa3d7a904cdde1911547bab"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.4-dev/punq-dev-v1.3.0-develop.4-dev-linux-arm64.tar.gz"
        sha256 "2284fc9f1a99c5d59997611846d5f85b709c5676c8ca39b774d45e6b7c14bec4"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.4-dev/punq-dev-v1.3.0-develop.4-dev-linux-arm.tar.gz"
        sha256 "6202e09fe42b5c33f3e05a95c639c2e1db495ad87a5d07173035e8c7faeb0b52"
      end
    end
  end
  
  version "1.3.0-develop.4-dev"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.4-dev-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.4-dev-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.4-dev-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.4-dev-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.4-dev-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.4-dev-linux-arm" => "punq-dev"
      end
    end
  end
end
end
