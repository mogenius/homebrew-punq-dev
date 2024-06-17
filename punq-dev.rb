class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.70/punq-dev-v1.5.0-develop.70-darwin-arm64.tar.gz"
      sha256 "433e23bb70367077b6473bcd67aa97c73f9d9aa032851d62990c92ce1c6fe710"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.70/punq-dev-v1.5.0-develop.70-darwin-amd64.tar.gz"
      sha256 "3f59ccd91ed327179e89ab724b1b7946814413f35f7d47d7c569f7b121481091"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.70/punq-dev-v1.5.0-develop.70-linux-amd64.tar.gz"
        sha256 "bcc1dc6affc99da3360d8333e4ab2d43efa4ec15a0947826861ce5736a2d211d"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.70/punq-dev-v1.5.0-develop.70-linux-386.tar.gz"
        sha256 "206a7ca81224855843c030c951f5955fc3356e4973f81f37b8a6151c0de79c9c"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.70/punq-dev-v1.5.0-develop.70-linux-arm64.tar.gz"
        sha256 "854c21d74d7ac61ed0cf6176c6e01a695cafd59be3b8746e0d77f6407a2d95bf"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.70/punq-dev-v1.5.0-develop.70-linux-arm.tar.gz"
        sha256 "bba84b11cb46acf139ab00ae70ae771b9b40a6cb24a47f8918e6251232e6b9af"
      end
    end
  end
  
  version "1.5.0-develop.70"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.70-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.70-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.70-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.70-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.70-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.70-linux-arm" => "punq-dev"
      end
    end
  end
end
end
