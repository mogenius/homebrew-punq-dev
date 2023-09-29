class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.2-dev/punq-dev-v1.3.0-develop.2-dev-darwin-arm64.tar.gz"
      sha256 "02a83f5a63053f651b4e7872d00129646f7cd0cb3fe4f27c84eb1b15cbe57235"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.2-dev/punq-dev-v1.3.0-develop.2-dev-darwin-amd64.tar.gz"
      sha256 "13e32d09d209a6c3f109928e2f7cb77416152b9a6693dfaaf31edeeb79cb483b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.2-dev/punq-dev-v1.3.0-develop.2-dev-linux-amd64.tar.gz"
        sha256 "c1d560263094877b8a86b28c93ac95b29a4a0d251bdff102832a28bf2629193e"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.2-dev/punq-dev-v1.3.0-develop.2-dev-linux-386.tar.gz"
        sha256 "741a2995b6d65b9095ae725b1bfe551e3713062b0744f5d24a7bf2dfa20963fe"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.2-dev/punq-dev-v1.3.0-develop.2-dev-linux-arm64.tar.gz"
        sha256 "f3c1bc3da78e74c3ab331c9580750709e7068874b3dff34cc2960d2b0da56b83"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.2-dev/punq-dev-v1.3.0-develop.2-dev-linux-arm.tar.gz"
        sha256 "166928f11bc9db592655a5b4fc86f3faffe2bb34b97cb206f1f7b281e5207655"
      end
    end
  end
  
  version "1.3.0-develop.2-dev"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.2-dev-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.2-dev-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.2-dev-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.2-dev-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.2-dev-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.2-dev-linux-arm" => "punq-dev"
      end
    end
  end
end
end
