class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.4/punq-dev-v1.4.9-develop.4-darwin-arm64.tar.gz"
      sha256 "bca25f79ded9b679fe1831dc174c69151725c15b4f5c2c681dbce5e8bc00e41d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.4/punq-dev-v1.4.9-develop.4-darwin-amd64.tar.gz"
      sha256 "82ec201772208e36436068f951c1d0a260873c7c807e693ca71c6f39ec19d731"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.4/punq-dev-v1.4.9-develop.4-linux-amd64.tar.gz"
        sha256 "fbc1ba3dc05d9551cf55e853c1c998aaccc5fdc29d7c27fdcaed9f55cb85b639"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.4/punq-dev-v1.4.9-develop.4-linux-386.tar.gz"
        sha256 "9538ea6976970657aa3fc78a173e198e718bb36f29940e01e7a586cb421b7e33"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.4/punq-dev-v1.4.9-develop.4-linux-arm64.tar.gz"
        sha256 "a9a0a36c0a1fc1108527df8b1996b96022d10c6c72d5719171bde08d6486273b"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.9-develop.4/punq-dev-v1.4.9-develop.4-linux-arm.tar.gz"
        sha256 "014cfbb73faf4552f4caecf4e416bcdbd95a01c5b73df68b261e7310966b84df"
      end
    end
  end
  
  version "1.4.9-develop.4"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.9-develop.4-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.9-develop.4-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.9-develop.4-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.9-develop.4-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.9-develop.4-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.9-develop.4-linux-arm" => "punq-dev"
      end
    end
  end
end
end
