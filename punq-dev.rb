class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.37/punq-dev-v1.5.0-develop.37-darwin-arm64.tar.gz"
      sha256 "5c59a94fc1e3fbafdaf77ac24aa9f590301743424fb958dbb1423c2bff404826"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.37/punq-dev-v1.5.0-develop.37-darwin-amd64.tar.gz"
      sha256 "efbd3a005a651a77ec0615bc724e584b52443a55d5c7542d0b514ccedca5d370"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.37/punq-dev-v1.5.0-develop.37-linux-amd64.tar.gz"
        sha256 "9013d5421daef661db7031a58c0cc144a8086eef868baa65315304036fabc16d"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.37/punq-dev-v1.5.0-develop.37-linux-386.tar.gz"
        sha256 "6e81eb162050b15e674a3abe598afc20f9689203740cce76a05971a426f3166a"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.37/punq-dev-v1.5.0-develop.37-linux-arm64.tar.gz"
        sha256 "5dfd165dad93960f027e1f554c502f48964ba4f62c9e647b48b0380ec3118ab2"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.37/punq-dev-v1.5.0-develop.37-linux-arm.tar.gz"
        sha256 "df300cb0d4451231a054e5cfda8e5e264fd9cb14bc587bdd717039eeb099ecf9"
      end
    end
  end
  
  version "1.5.0-develop.37"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.37-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.37-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.37-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.37-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.37-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.37-linux-arm" => "punq-dev"
      end
    end
  end
end
end
