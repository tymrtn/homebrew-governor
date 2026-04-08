class Governor < Formula
  desc "Policy engine for AI agent tool governance"
  homepage "https://github.com/tymrtn/governor"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tymrtn/governor/releases/download/v0.1.0/governor-0.1.0-darwin-arm64.tar.gz"
      sha256 "991eb902d7edf5c30e72a766aec39d938bfd637a7ee92ea6d98be3814a33a9fc"
    end
  end

  def install
    bin.install "governor"
  end

  test do
    assert_match "governor", shell_output("#{bin}/governor --version")
  end
end

