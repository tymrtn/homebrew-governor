class Governor < Formula
  desc "Blind attribution scoring for AI agent actions"
  homepage "https://github.com/tymrtn/governor"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tymrtn/governor/releases/download/v0.1.0/governor-aarch64-apple-darwin.tar.gz"
      sha256 "57b49c0cf275d82809b97f875c1a379629af45af4fa989215545a1c668220122"
    end
  end

  def install
    bin.install "governor"
  end

  test do
    assert_match "governor", shell_output("#{bin}/governor --version")
  end
end
