class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.35/punq-dev-v1.5.0-develop.35-darwin-arm64.tar.gz"
      sha256 "188d7d87798dccb517cbb26388e4e7fdb0e3589c15cf5afd4ad72328e915b5dd"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.35/punq-dev-v1.5.0-develop.35-darwin-amd64.tar.gz"
      sha256 "98f6c59ffe54493ea0aceffbb43b058d5a865f5f6796760a8460930f38f52bb6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.35/punq-dev-v1.5.0-develop.35-linux-amd64.tar.gz"
        sha256 "a099dea2b5520dc362878ebe0087c5b91e8dee2452925634f11e2b46ee2f44db"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.35/punq-dev-v1.5.0-develop.35-linux-386.tar.gz"
        sha256 "b743c1dab330df2a67d097ef553213c0067a9b3d3353a6d40047e98416211710"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.35/punq-dev-v1.5.0-develop.35-linux-arm64.tar.gz"
        sha256 "e20274edab43cfcf0cd6208741d6d09c52084729fbbb45e2f21d6bbd43e50dd4"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.35/punq-dev-v1.5.0-develop.35-linux-arm.tar.gz"
        sha256 "9ceaafdd06bf964172f41f8a762be7ba74ddac9e6bd5aa6a0ddec001c1667958"
      end
    end
  end
  
  version "1.5.0-develop.35"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.35-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.35-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.35-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.35-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.35-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.35-linux-arm" => "punq-dev"
      end
    end
  end
end
end
