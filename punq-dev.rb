class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.18/punq-dev-v1.3.0-develop.18-darwin-arm64.tar.gz"
      sha256 "be548d8ea7981178840365e6dd52b329000dff456d63cb3b48049e9fb3f734ce"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.18/punq-dev-v1.3.0-develop.18-darwin-amd64.tar.gz"
      sha256 "9db80a26a8cfb2143332bc32804fec637523a4a8ef4366ac259f32cee0b092e2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.18/punq-dev-v1.3.0-develop.18-linux-amd64.tar.gz"
        sha256 "f584f67da4c4f4d8a8018048f5b84ac4aeddb76372de7ebba6a8f8b65b33b857"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.18/punq-dev-v1.3.0-develop.18-linux-386.tar.gz"
        sha256 "2834202ea7ff9a4a0b9860ef2f8df12feb51b0cc91dfdabd698b9ef608e9afd4"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.18/punq-dev-v1.3.0-develop.18-linux-arm64.tar.gz"
        sha256 "15191a3be2f471d178cc3fc1a2eacd37fb9acb68b43a4c85015aac540632d836"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.18/punq-dev-v1.3.0-develop.18-linux-arm.tar.gz"
        sha256 "d2fec19b9f54d198cbcc3d69283c1197dedb0a09aa1a6712266125838a78d0f6"
      end
    end
  end
  
  version "1.3.0-develop.18"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.18-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.18-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.18-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.18-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.18-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.18-linux-arm" => "punq-dev"
      end
    end
  end
end
end
