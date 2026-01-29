class Gopen < Formula
  desc "Open Google Cloud Console services from CLI"
  homepage "https://github.com/jrfk/gopen"
  version ""

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/jrfk/gopen/releases/download/v/gopen-macos-arm64.tar.gz"
    sha256 "335db81427d25568869d8b2db40b69a3c99b7d89e40d12fc856ef2a782ac668e"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/jrfk/gopen/releases/download/v/gopen-linux-x86_64.tar.gz"
    sha256 "88cb3f1e9cc0139380a5ae94e01523cc8f59d7081955f7569d430f36d72b2ac2"
  end

  def install
    bin.install "gopen"
  end

  test do
    system "#{bin}/gopen", "--version"
  end
end
