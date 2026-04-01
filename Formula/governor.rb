class Governor < Formula
  desc "Blind attribution-based trust scoring shell governor"
  homepage "https://github.com/tymrtn/homebrew-governor"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tymrtn/homebrew-governor/releases/download/v#{version}/governor-macos-arm64"
      sha256 "8779b624f2fac7a7a6bc563ed59b78a78c3b84d6c4f8762f72ac955c0285da16"
    else
      url "https://github.com/tymrtn/homebrew-governor/releases/download/v#{version}/governor-macos-x86_64"
      sha256 "e48ae67ae09488a56570b75e10208eb1f8ab0c35111ea7dde7297e035f63f6dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tymrtn/homebrew-governor/releases/download/v#{version}/governor-linux-arm64"
      sha256 "dfbdee36f4ead0257e6ba84becf044e50891775a32db23e94f9a6f5220802912"
    else
      url "https://github.com/tymrtn/homebrew-governor/releases/download/v#{version}/governor-linux-x86_64"
      sha256 "1e22cb818b563cee2d5e8e5ba4b0cac6a6b4377ba04a2bbf4d017adf0a8e897a"
    end
  end

  def install
    bin.install "governor"
  end

  test do
    output = shell_output("#{bin}/governor --help")
    assert_match "transparent shell passthrough with blind attribution scoring", output
  end
end
