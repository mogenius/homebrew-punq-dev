class PunqDev < Formula
  desc "View your kubernetes workloads relatively neat! [dev]"
  homepage "https://punq.dev"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.11-dev/punq-dev-v1.3.0-develop.11-dev-darwin-arm64.tar.gz"
      sha256 "7a65200b53b5d69b9c7714e83ac7bf318fc97026024fe976728f05a06114ebd6"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.11-dev/punq-dev-v1.3.0-develop.11-dev-darwin-amd64.tar.gz"
      sha256 "dfa74733a3081860e106dfb62578aee5886e55c33954a612c5e7b70c61ac504c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.11-dev/punq-dev-v1.3.0-develop.11-dev-linux-amd64.tar.gz"
        sha256 "4a6cf97c26a464c9967322870870eb1d5078a28787734c2efc9efbd837fdab64"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.11-dev/punq-dev-v1.3.0-develop.11-dev-linux-386.tar.gz"
        sha256 "6e8aa17fe4bc8fbe5565561743f0ec087ecc4318dc61cfe7a9322eb65481487d"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.11-dev/punq-dev-v1.3.0-develop.11-dev-linux-arm64.tar.gz"
        sha256 "b9506c6c5e32294dddd786f1a52b02aebe4ee977c07616e2d4a144adc84a8a4e"
      else
        url "https://github.com/mogenius/homebrew-punq-dev/releases/download/v1.3.0-develop.11-dev/punq-dev-v1.3.0-develop.11-dev-linux-arm.tar.gz"
        sha256 "061ccaffe7ebcc18bf3ed847d436428ce9487ba15f14fa615b27ebbba54eb8d3"
      end
    end
  end
  
  version "1.3.0-develop.11-dev"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "punq-dev-v1.3.0-develop.11-dev-darwin-arm64" => "punq-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "punq-dev-v1.3.0-develop.11-dev-darwin-amd64" => "punq-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "punq-dev-v1.3.0-develop.11-dev-linux-amd64" => "punq-dev"
      else
        # Installation steps for Linux 386
        bin.install "punq-dev-v1.3.0-develop.11-dev-linux-386" => "punq-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "punq-dev-v1.3.0-develop.11-dev-linux-arm64" => "punq-dev"
      else
        # Installation steps for Linux ARM
        bin.install "punq-dev-v1.3.0-develop.11-dev-linux-arm" => "punq-dev"
      end
    end
  end
end
end
