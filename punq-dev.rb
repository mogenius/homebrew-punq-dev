class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.39/punq-dev-v1.5.0-develop.39-darwin-arm64.tar.gz"
      sha256 "f4858780838f704b579c1828b572691a1e6e94b7f49a8bb7c699090f594486b3"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.39/punq-dev-v1.5.0-develop.39-darwin-amd64.tar.gz"
      sha256 "21b5bd0d44f998d760d0691706061e8e57513d1a8c3cecfceb8dfb0d7658fa6e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.39/punq-dev-v1.5.0-develop.39-linux-amd64.tar.gz"
        sha256 "21c9900f179bf55275f1dcc8e51c0728eb9764bba9953d43cd3cc9cefae883bd"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.39/punq-dev-v1.5.0-develop.39-linux-386.tar.gz"
        sha256 "0d38b32f2e7a764a176ddb6921cce5cc6da3713446c9150196f1b38a35238dfa"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.39/punq-dev-v1.5.0-develop.39-linux-arm64.tar.gz"
        sha256 "13687bc3a5e84b87b84324543ed8228bc773d47c3a07aadea5f7284c570fa61c"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.39/punq-dev-v1.5.0-develop.39-linux-arm.tar.gz"
        sha256 "dccd3b93142bc336f4a0cde356b9720af2acc114a15c4e3e7f0abb8260b6795b"
      end
    end
  end
  
  version "1.5.0-develop.39"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.39-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.39-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.39-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.39-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.39-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.39-linux-arm" => "punq-dev"
      end
    end
  end
end
end
