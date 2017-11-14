class Sourcedocs < Formula
  desc "Command Line Tool that generates Markdown files from inline source code documentation"
  homepage "https://github.com/eneko/SourceDocs"
  version "0.5.0"
  url "https://github.com/eneko/SourceDocs/archive/#{version}.tar.gz"
  sha256 "ceb94270327908cba218da9eb28e5873c07a273b91591b4128709995279b4f18"
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
