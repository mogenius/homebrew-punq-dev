class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.4/punq-dev-v1.4.0-develop.4-darwin-arm64.tar.gz"
      sha256 "239f5b57a9ef060c85354fad7f4f0c8fb0713a4d84b714d77afb550f1476df05"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.4/punq-dev-v1.4.0-develop.4-darwin-amd64.tar.gz"
      sha256 "5988338412a6cccca42dce4521dcf1e2665b23da3fac4fc05a05cd8038ca00af"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.4/punq-dev-v1.4.0-develop.4-linux-amd64.tar.gz"
        sha256 "f1230ce7b0dbe54b874d5ab9ff919bf19ee8fb38d3a8856f306961c1e7ed0d10"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.4/punq-dev-v1.4.0-develop.4-linux-386.tar.gz"
        sha256 "ab806fada1b9156225fc16da232ad74c24e99fd0884e9d6b5f845588f1417f22"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.4/punq-dev-v1.4.0-develop.4-linux-arm64.tar.gz"
        sha256 "79f30413e517ae89d4b0f1b05de26c8426e8f6de4bdd50c6c69aac01dc086030"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.4/punq-dev-v1.4.0-develop.4-linux-arm.tar.gz"
        sha256 "fdf279839cd926c7d049ae685e035cb8c35288abe15f68f4c7b473c702e44bd6"
      end
    end
  end
  
  version "1.4.0-develop.4"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.0-develop.4-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.0-develop.4-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.0-develop.4-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.0-develop.4-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.0-develop.4-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.0-develop.4-linux-arm" => "punq-dev"
      end
    end
  end
end
end
