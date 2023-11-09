class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.23/punq-dev-v1.5.0-develop.23-darwin-arm64.tar.gz"
      sha256 "72d223db422a20ed4c6f0a94207afb0bcc5a626c0e89ace1d2d51467c3a78a38"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.23/punq-dev-v1.5.0-develop.23-darwin-amd64.tar.gz"
      sha256 "7740c0f8d2f21778f4033e0c47e8f6bfcad98495f2d5e4bac1e1ff73f36fe023"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.23/punq-dev-v1.5.0-develop.23-linux-amd64.tar.gz"
        sha256 "61b13e4ffea33b7590e0c6cd284f58743b44dc4f699ecc54a2640c3b794b7e7f"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.23/punq-dev-v1.5.0-develop.23-linux-386.tar.gz"
        sha256 "6eb902d6c3075eba62b3a4461f9fe20915ec8e59e1f8dd7f51344caf63fb9257"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.23/punq-dev-v1.5.0-develop.23-linux-arm64.tar.gz"
        sha256 "4bcff918d2bd975cbf9206345343a0c07b324a28cd6f8e148efa1c12eef8265a"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.23/punq-dev-v1.5.0-develop.23-linux-arm.tar.gz"
        sha256 "ce724d7dd260222f289e8337df5ba817249d12e349d50cc37bd662c7d5568ea6"
      end
    end
  end
  
  version "1.5.0-develop.23"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.23-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.23-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.23-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.23-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.23-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.23-linux-arm" => "punq-dev"
      end
    end
  end
end
end
