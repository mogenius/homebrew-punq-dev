class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.48/punq-dev-v1.5.0-develop.48-darwin-arm64.tar.gz"
      sha256 "2297047818e5680cf525ba408cd6bc05079e9d2ac6c94063d372c01c1282d7e0"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.48/punq-dev-v1.5.0-develop.48-darwin-amd64.tar.gz"
      sha256 "d25616dc23563351018b1f389ea109f5ae323584057b50a28e5582c2e1cf4c3b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.48/punq-dev-v1.5.0-develop.48-linux-amd64.tar.gz"
        sha256 "392b275cb3752ddb0362cc88cbb06df63c1707015fdebca68ae3393befe74560"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.48/punq-dev-v1.5.0-develop.48-linux-386.tar.gz"
        sha256 "7590b517bd0335aa4d2dc1926c9cf0562c4aa79b7fa59305932d2cb6f2a262f8"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.48/punq-dev-v1.5.0-develop.48-linux-arm64.tar.gz"
        sha256 "9984f6c86290ad631750c5879476d50327b9e0d17a2badff422b4504f53ebd36"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.48/punq-dev-v1.5.0-develop.48-linux-arm.tar.gz"
        sha256 "2c2a9fb5908a493824f6287abf6bedd7da6698742aaabcbc918eec94d656ca2c"
      end
    end
  end
  
  version "1.5.0-develop.48"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.48-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.48-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.48-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.48-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.48-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.48-linux-arm" => "punq-dev"
      end
    end
  end
end
end
