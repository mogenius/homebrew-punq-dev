class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.23/punq-dev-v1.3.0-develop.23-darwin-arm64.tar.gz"
      sha256 "404ed0765addf01f18f42c4d8967fbe6aecebe2bad7affceccf294ba846529bc"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.23/punq-dev-v1.3.0-develop.23-darwin-amd64.tar.gz"
      sha256 "89f41e0a239440048482d47dfce311558a9a885ad662b384eca5a8b5d11bbaa5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.23/punq-dev-v1.3.0-develop.23-linux-amd64.tar.gz"
        sha256 "852e26b0e6a1f3f860eac83a3e1b7c604bd0f325953c721dfd8fffa708df9650"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.23/punq-dev-v1.3.0-develop.23-linux-386.tar.gz"
        sha256 "ccf4be56f8d370c79e87a663e833d3e8f395106261bcd6d90955ebcc2dc39f6a"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.23/punq-dev-v1.3.0-develop.23-linux-arm64.tar.gz"
        sha256 "908cef645b69441a4aa444cdf4e16a7a2c48b65ae08e9e1e876c91afb6061eb1"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.23/punq-dev-v1.3.0-develop.23-linux-arm.tar.gz"
        sha256 "b3d39b9ba171e6e324af42003ace163c775eb7371f471affbe987ff0eccffbd8"
      end
    end
  end
  
  version "1.3.0-develop.23"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.23-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.23-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.23-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.23-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.23-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.23-linux-arm" => "punq-dev"
      end
    end
  end
end
end
