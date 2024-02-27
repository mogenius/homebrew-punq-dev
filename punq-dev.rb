class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.55/punq-dev-v1.5.0-develop.55-darwin-arm64.tar.gz"
      sha256 "7fddf5dfb50f45114dfe0076c8ccdb562a5d6e8fa959764e0828153c1dccf4c4"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.55/punq-dev-v1.5.0-develop.55-darwin-amd64.tar.gz"
      sha256 "88a0605ff20169d27288335d9be7a2d1d4382615fe9c89760af5719f059d9e67"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.55/punq-dev-v1.5.0-develop.55-linux-amd64.tar.gz"
        sha256 "1cfa953b5ef361c21fc19d9d17c48b198c75ad20fde5a054cadfbdb9ec9c9140"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.55/punq-dev-v1.5.0-develop.55-linux-386.tar.gz"
        sha256 "7b75d5f4555fe4eab7ba28b015c60cbe42a70ac53a495dd86781d8f4786f508c"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.55/punq-dev-v1.5.0-develop.55-linux-arm64.tar.gz"
        sha256 "63dd2cc9a898d8160bf3b5143784f3fd392ab66853befbb48ec01e356f4d31c5"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.55/punq-dev-v1.5.0-develop.55-linux-arm.tar.gz"
        sha256 "4ff331b2cc5458a0e383985701066d02c39e9030380e3d3e7821e5698eb2761e"
      end
    end
  end
  
  version "1.5.0-develop.55"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.55-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.55-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.55-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.55-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.55-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.55-linux-arm" => "punq-dev"
      end
    end
  end
end
end
