class Triad < Formula
  desc "Subscription-backed frontier-model MapReduce code review harness"
  homepage "https://github.com/nocell/triad-harness"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nocell/triad-harness/releases/download/v0.1.0/triad-v0.1.0-darwin-arm64.tar.gz"
      sha256 "4bc70b4dd89052eba0f9238d3e3377c6361b580404fa25c1b2ddc2814321a8d1"
    end

    on_intel do
      url "https://github.com/nocell/triad-harness/releases/download/v0.1.0/triad-v0.1.0-darwin-x64.tar.gz"
      sha256 "f53a70a07d4bfa159179346ec348b6041e4d06b09efa012f95268c2ef7cd3148"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nocell/triad-harness/releases/download/v0.1.0/triad-v0.1.0-linux-arm64.tar.gz"
      sha256 "97e0be87bc7541f3fae945e140092d1952e945387c67a417b7d65060c768d2fe"
    end

    on_intel do
      url "https://github.com/nocell/triad-harness/releases/download/v0.1.0/triad-v0.1.0-linux-x64.tar.gz"
      sha256 "14ce9c21a1c47cc25ab954e793b6ec086ac7ff1d59fae85d4b4a30947517c834"
    end
  end

  def install
    bin.install "triad"
  end

  test do
    assert_match "Usage: triad", shell_output("#{bin}/triad --help")
  end
end
