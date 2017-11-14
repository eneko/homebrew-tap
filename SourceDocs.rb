class Sourcedocs < Formula
  desc "Command Line Tool that generates Markdown files from inline source code documentation"
  homepage "https://github.com/eneko/SourceDocs"
  version "0.5.0"
  url "https://github.com/eneko/SourceDocs/archive/#{version}.tar.gz"
  sha256 "068d5f27c4d47109ee9eefe94655fe15c769895d69f51bebf4092c19217fd59c"
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
