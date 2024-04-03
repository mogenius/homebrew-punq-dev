class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.61/punq-dev-v1.5.0-develop.61-darwin-arm64.tar.gz"
      sha256 "f736b5eee5926b1648f00dfc12562a6580ffe0300e064f0018428040a942e362"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.61/punq-dev-v1.5.0-develop.61-darwin-amd64.tar.gz"
      sha256 "208ba562cea21ff85580273f02bff0061869677cfbaf71533944f272919d0267"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.61/punq-dev-v1.5.0-develop.61-linux-amd64.tar.gz"
        sha256 "5c4cc3c1038af417a85f81ff9cade43bf6026e58a23ec9ba9c5d5d6757f1f726"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.61/punq-dev-v1.5.0-develop.61-linux-386.tar.gz"
        sha256 "dec0c167ec4b5a26517c254f6c6f9b2ccc94a64ad4c462255ef1ff5806bec7ad"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.61/punq-dev-v1.5.0-develop.61-linux-arm64.tar.gz"
        sha256 "83c8923a9ef68484ed9d367203f0014c8d3d0538553fa3aae51420ce62ef06b8"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.61/punq-dev-v1.5.0-develop.61-linux-arm.tar.gz"
        sha256 "658db213aa541d13ea16feefb2003d95c74514b759b7a56a9f58315547ec8ebd"
      end
    end
  end
  
  version "1.5.0-develop.61"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.61-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.61-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.61-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.61-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.61-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.61-linux-arm" => "punq-dev"
      end
    end
  end
end
end
