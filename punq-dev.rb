class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.76/punq-dev-v1.5.0-develop.76-darwin-arm64.tar.gz"
      sha256 "c1ab949c977872a71972cbe3ad4907ac4a559bc271f829c07ff8022a826c69c9"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.76/punq-dev-v1.5.0-develop.76-darwin-amd64.tar.gz"
      sha256 "c59bd87fbdd69dd0ad5a5ccaf69ef6635d5013778cdb6f153173d37a8d923299"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.76/punq-dev-v1.5.0-develop.76-linux-amd64.tar.gz"
        sha256 "5ad297794d5a5f1bf4bbc892af3d38565eb5f4d505cc46a9afe227720f04da5b"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.76/punq-dev-v1.5.0-develop.76-linux-386.tar.gz"
        sha256 "6144f6484dc32a1072ef781e20d710ac7f852828dd3abf4295dfa357ddcd3d90"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.76/punq-dev-v1.5.0-develop.76-linux-arm64.tar.gz"
        sha256 "fb6348eac3fc972408ba3b2055edb3d132d2469da4016069ba83e70c724cdaac"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.76/punq-dev-v1.5.0-develop.76-linux-arm.tar.gz"
        sha256 "95e26b10911013155d82e585861df848b79fa8227a48115c3cebc6d723c052d3"
      end
    end
  end
  
  version "1.5.0-develop.76"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.76-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.76-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.76-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.76-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.76-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.76-linux-arm" => "punq-dev"
      end
    end
  end
end
end
