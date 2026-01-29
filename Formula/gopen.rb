class Gopen < Formula
  desc "Open Google Cloud Console services from CLI"
  homepage "https://github.com/jrfk/gopen"
  version "0.1.0-test.5"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/jrfk/gopen/releases/download/v0.1.0-test.5/gopen-macos-arm64.tar.gz"
    sha256 "5f32b298eebda074e86233b35646ba7a44a0b3371a6d7ba04b3b3e9a15bc1189"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/jrfk/gopen/releases/download/v0.1.0-test.5/gopen-linux-x86_64.tar.gz"
    sha256 "e83d2eddbaf22c8bdabce175604234b3f0577aced06cf84c3b91b9c78b0c589b"
  end

  def install
    bin.install "gopen"
  end

  test do
    system "#{bin}/gopen", "--version"
  end
end
