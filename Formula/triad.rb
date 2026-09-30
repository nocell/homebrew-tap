class Triad < Formula
  desc "Subscription-backed frontier-model MapReduce code review harness"
  homepage "https://github.com/nocell/triad-harness"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nocell/triad-harness/releases/download/v0.1.2/triad-v0.1.2-darwin-arm64.tar.gz"
      sha256 "1a6a71dc635c0c57364e4103fdefb33f2c936fbc6dfdcf2d2fbbac004bfcd4ce"
    end

    on_intel do
      url "https://github.com/nocell/triad-harness/releases/download/v0.1.2/triad-v0.1.2-darwin-x64.tar.gz"
      sha256 "34e4478d480cb302e001b4f40c67730d1fe9c70324d78b1ab56fe8e8fd22d71d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nocell/triad-harness/releases/download/v0.1.2/triad-v0.1.2-linux-arm64.tar.gz"
      sha256 "07ba68e37ed5b1e20143322f306c15d17f67d428ac322c6320e2a3da7ff48843"
    end

    on_intel do
      url "https://github.com/nocell/triad-harness/releases/download/v0.1.2/triad-v0.1.2-linux-x64.tar.gz"
      sha256 "63ab9dcca5ae0b826cd17f44a94bcf10db8dd3d3b053a7ef884190c0600af30b"
    end
  end

  def install
    bin.install "triad"
  end

  test do
    assert_match "Usage: triad", shell_output("#{bin}/triad --help")
  end
end
