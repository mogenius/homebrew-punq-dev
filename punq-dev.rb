class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.74/punq-dev-v1.5.0-develop.74-darwin-arm64.tar.gz"
      sha256 "b596e327ca8ca6150c0e708124c4be6ff0969ba2c0cad5fbda2102e9731d86c1"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.74/punq-dev-v1.5.0-develop.74-darwin-amd64.tar.gz"
      sha256 "d8f114a3e734f8e5d5e32e571ea17e550cfa1a41417b42df9e7d899f9f123be7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.74/punq-dev-v1.5.0-develop.74-linux-amd64.tar.gz"
        sha256 "ac51aac3205b0da284f5f51963cd8c92b054c8b0fce650c8bcde6fcc8635bad7"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.74/punq-dev-v1.5.0-develop.74-linux-386.tar.gz"
        sha256 "a41ba6ae2149eea2f9190e6220aafaf0d578ce3efe8b5bcaa92e55d490b66972"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.74/punq-dev-v1.5.0-develop.74-linux-arm64.tar.gz"
        sha256 "a3a211746afc95b5f93c0cfa106768f088b5075220c3e135d54d7a9e2e0e8ceb"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.74/punq-dev-v1.5.0-develop.74-linux-arm.tar.gz"
        sha256 "468b5685b519609d5b880a673e67fe1b1c1206d6c981fa244dc83ff2e2c3d525"
      end
    end
  end
  
  version "1.5.0-develop.74"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.74-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.74-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.74-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.74-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.74-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.74-linux-arm" => "punq-dev"
      end
    end
  end
end
end
