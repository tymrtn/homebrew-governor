class Governor < Formula
  desc "Blind attribution scoring for AI agent actions"
  homepage "https://github.com/tymrtn/governor"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tymrtn/governor/releases/download/v0.1.0/governor-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "governor"
  end

  test do
    assert_match "governor", shell_output("#{bin}/governor --version")
  end
end
