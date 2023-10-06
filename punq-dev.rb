class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.3/punq-dev-v1.4.0-develop.3-darwin-arm64.tar.gz"
      sha256 "a72b51544e1cf704ca431ffc13606238c6766006330bd9c0c4838742dba2fdf9"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.3/punq-dev-v1.4.0-develop.3-darwin-amd64.tar.gz"
      sha256 "476d01c6333837d81c269300618becbb70d2a581a3ab787922ee0778ffc1612c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.3/punq-dev-v1.4.0-develop.3-linux-amd64.tar.gz"
        sha256 "4d4d9e7f64e88d48ee502c256bd9be764ef604b5fe3ebf9fc92a233a7ecaed53"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.3/punq-dev-v1.4.0-develop.3-linux-386.tar.gz"
        sha256 "7bc8c9229a15f0a88637abd4b67594924596b7f9c47df31b8388126aa696c601"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.3/punq-dev-v1.4.0-develop.3-linux-arm64.tar.gz"
        sha256 "173ae1b9ecf49ebaca956eecf824b05db8487b7de588f6a770c395c3fbed881e"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.4.0-develop.3/punq-dev-v1.4.0-develop.3-linux-arm.tar.gz"
        sha256 "c6fea09ef000ddf6e67816854b212297758350274db1073304262dca75461a0e"
      end
    end
  end
  
  version "1.4.0-develop.3"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.4.0-develop.3-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.4.0-develop.3-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.4.0-develop.3-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.4.0-develop.3-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.4.0-develop.3-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.4.0-develop.3-linux-arm" => "punq-dev"
      end
    end
  end
end
end
