class Governor < Formula
  desc "Policy engine for AI agent tool governance"
  homepage "https://github.com/tymrtn/governor"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tymrtn/governor/releases/download/v0.1.0/governor-0.1.0-darwin-arm64.tar.gz"
      sha256 "73bc31756b7d8cf28bc6405ead082cbf55b80875c461b4ee560e95c89d7f928b"
    end
  end

  def install
    bin.install "governor"
  end

  test do
    assert_match "governor", shell_output("#{bin}/governor --version")
  end
end
