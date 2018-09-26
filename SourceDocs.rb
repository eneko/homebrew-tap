class Sourcedocs < Formula
  desc "Command Line Tool that generates Markdown files from inline source code documentation"
  homepage "https://github.com/eneko/SourceDocs"
  version "0.5.1"
  url "https://github.com/eneko/SourceDocs/archive/#{version}.tar.gz"
  sha256 "3c2e2de695d49dbdd5acb49f8876042bdc97e8d6b95584d3ef6b592b8f10affc"
  head "https://github.com/eneko/SourceDocs.git"

  depends_on :xcode

  def install
    build_path = "#{buildpath}/.build/release/sourcedocs"
    ohai "Building SourceDocs"
    system("swift build --disable-sandbox -c release -Xswiftc -static-stdlib")
    ohai "Installing SourceDocs..."
    bin.install build_path
  end
end
