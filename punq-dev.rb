class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.28/punq-dev-v1.5.0-develop.28-darwin-arm64.tar.gz"
      sha256 "89b9d85a40fb245a8088dd4dea40c4dab3e72d8435853954630448aaa12c0249"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.28/punq-dev-v1.5.0-develop.28-darwin-amd64.tar.gz"
      sha256 "b3ddfb66869124db2410c69dd25e868e45a95a0900784934186ff572a795c641"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.28/punq-dev-v1.5.0-develop.28-linux-amd64.tar.gz"
        sha256 "0026e17d6116955b5d4d8254f57e2444f328c705ab6643c1a49f5b37012c595e"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.28/punq-dev-v1.5.0-develop.28-linux-386.tar.gz"
        sha256 "c5c1b81d5c32e0f7879bf0b4ecbdf5a5d9b8e520f95481efd0b80328f8a485cc"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.28/punq-dev-v1.5.0-develop.28-linux-arm64.tar.gz"
        sha256 "d8ed518933a898933380662d23a838c1bc4558bd51276c129d92f61ec7c44e93"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.28/punq-dev-v1.5.0-develop.28-linux-arm.tar.gz"
        sha256 "e82a7d4f478604c28e80b88b8d9ae874558abc6ba1e59ab05aad52e86732f6bd"
      end
    end
  end
  
  version "1.5.0-develop.28"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.28-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.28-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.28-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.28-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.28-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.28-linux-arm" => "punq-dev"
      end
    end
  end
end
end
