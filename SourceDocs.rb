class Sourcedocs < Formula
  desc "Command Line Tool that generates Markdown files from inline source code documentation"
  homepage "https://github.com/eneko/SourceDocs"
  version "0.5.1"
  url "https://github.com/eneko/SourceDocs/archive/#{version}.tar.gz"
  sha256 "d1bb2f54ab25250433f6a9c281a2afc7b5382b30cf686412f100b78078c93c27"
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
