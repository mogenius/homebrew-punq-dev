class PunqDev < Formula
  desc "A slim open-source workload manager for Kubernetes with team collaboration, WebApp, and CLI. [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.57/punq-dev-v1.5.0-develop.57-darwin-arm64.tar.gz"
      sha256 "205685ed5eeaff24a1ee434d95f5f84e14e36cdfbc112c1092a14cc82d125936"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.57/punq-dev-v1.5.0-develop.57-darwin-amd64.tar.gz"
      sha256 "b2b42b283631ac03381f4aa0065aa860e3b922394f06defe04f3671e09b88e3d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.57/punq-dev-v1.5.0-develop.57-linux-amd64.tar.gz"
        sha256 "bab7f581da36bc8d9fd6bd6b05013530a1e1b86128b9d92a0587012ffcff7f43"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.57/punq-dev-v1.5.0-develop.57-linux-386.tar.gz"
        sha256 "057fc59b8069fde64f3cb904fed55f6eb86d5eb09832f28288d2d5c9f9f40a19"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.57/punq-dev-v1.5.0-develop.57-linux-arm64.tar.gz"
        sha256 "5863cab3e171d52b604569eb79b4ee237287081d8861c52ec9ea898e5ee3dc9f"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.5.0-develop.57/punq-dev-v1.5.0-develop.57-linux-arm.tar.gz"
        sha256 "4839b9a8c9f3c4b9dd33cfbbd4db0b07d30f05638defe24632f0b971ea6f7dbd"
      end
    end
  end
  
  version "1.5.0-develop.57"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.5.0-develop.57-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.5.0-develop.57-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.5.0-develop.57-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.5.0-develop.57-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.5.0-develop.57-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.5.0-develop.57-linux-arm" => "punq-dev"
      end
    end
  end
end
end
