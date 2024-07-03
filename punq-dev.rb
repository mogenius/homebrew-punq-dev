class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.72/punq-dev-v1.5.0-develop.72-darwin-arm64.tar.gz"
      sha256 "de4f3b7774dc1d08439d535e3b4c9dcf84373ac25a1266631b713b1613bea135"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.72/punq-dev-v1.5.0-develop.72-darwin-amd64.tar.gz"
      sha256 "0d9ea65a10a26838dc6a192825106df888ab53629ed90f4946ca9bee03ff5247"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.72/punq-dev-v1.5.0-develop.72-linux-amd64.tar.gz"
        sha256 "523afc39407bc4e863427c0d7de3daaf61ff639e2781534cf04f0358408eb711"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.72/punq-dev-v1.5.0-develop.72-linux-386.tar.gz"
        sha256 "8493d4249e2e306da7d03db7271cc7a1eedc06784b9f45800fa1aab10b8528bc"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.72/punq-dev-v1.5.0-develop.72-linux-arm64.tar.gz"
        sha256 "6dc8d077f0fdcc07e861211acee5bdeb19ffd1ae203340f7e7285b421472e47b"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.72/punq-dev-v1.5.0-develop.72-linux-arm.tar.gz"
        sha256 "55fc55876a6988bc70e15c24945aa29ba6657ff7c59600e9bed619a198f3d6ed"
      end
    end
  end
  
  version "1.5.0-develop.72"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.72-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.72-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.72-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.72-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.72-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.72-linux-arm" => "punq-dev"
      end
    end
  end
end
end
