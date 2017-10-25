class Sourcedocs < Formula
  desc "Command Line Tool that generates Markdown files from inline source code documentation"
  homepage "https://github.com/eneko/SourceDocs"
  version "0.4.0"
  url "https://github.com/eneko/SourceDocs/archive/#{version}.tar.gz"
  sha256 "78db15b64700915489e2393715d9ff97ac574cbdf93bbf7daaeb92d371454498"
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
