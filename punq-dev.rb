class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.12/punq-dev-v1.5.0-develop.12-darwin-arm64.tar.gz"
      sha256 "87a0480a74902b02ffa7647b19516a94cc7f325eb5f8041ce4f985ef996aa556"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.12/punq-dev-v1.5.0-develop.12-darwin-amd64.tar.gz"
      sha256 "a5eed1ae5492e30240f831f1e61d6668a73df02977d91522741c4e2b521eaa63"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.12/punq-dev-v1.5.0-develop.12-linux-amd64.tar.gz"
        sha256 "21113694994de63117c2b9a65c4a518e1cc1762861995afdfc9f6b550aa011be"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.12/punq-dev-v1.5.0-develop.12-linux-386.tar.gz"
        sha256 "45d2aa524935487c5dd1850592897971d671f5a0e5ce6556b1f54f32419299e1"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.12/punq-dev-v1.5.0-develop.12-linux-arm64.tar.gz"
        sha256 "d53c90abd522f724962f6443a94af35fdfb7046d40b0ea6f3b6e10c17f927af3"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.12/punq-dev-v1.5.0-develop.12-linux-arm.tar.gz"
        sha256 "77399260c07dae2640e1ac1df44161822f86d73545ba1c9dcccf0332746ada3c"
      end
    end
  end
  
  version "1.5.0-develop.12"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.12-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.12-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.12-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.12-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.12-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.12-linux-arm" => "punq-dev"
      end
    end
  end
end
end
