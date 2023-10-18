class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.9/punq-dev-v1.4.2-develop.9-darwin-arm64.tar.gz"
      sha256 "0a69b1dd801a58aaa7bb77e1ca4d0f1482a23118e8b18c561ed3f7242c758932"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.9/punq-dev-v1.4.2-develop.9-darwin-amd64.tar.gz"
      sha256 "977e0ee4399757da6bec294b82602ccd583d130dae491582e96ab17baf11b58e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.9/punq-dev-v1.4.2-develop.9-linux-amd64.tar.gz"
        sha256 "688cad97d8dd4808368e04f46fa8fbcaf470b55139d793d05ce4249719aa0dcf"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.9/punq-dev-v1.4.2-develop.9-linux-386.tar.gz"
        sha256 "9a25faa3868a866ab994c086849812b8925152844e840607b117df7332a34afc"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.9/punq-dev-v1.4.2-develop.9-linux-arm64.tar.gz"
        sha256 "dc7f3808b50ca5d4d9f86103a5d391cbc63ccad50d173ccbef57313281dffe80"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.2-develop.9/punq-dev-v1.4.2-develop.9-linux-arm.tar.gz"
        sha256 "60b4f3ba4f89ba596ae75f66f6c680df0bd4dacfffdfc50d6f1ae93e5064cde3"
      end
    end
  end
  
  version "1.4.2-develop.9"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.2-develop.9-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.2-develop.9-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.2-develop.9-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.2-develop.9-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.2-develop.9-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.2-develop.9-linux-arm" => "punq-dev"
      end
    end
  end
end
end
