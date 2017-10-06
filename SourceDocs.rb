class Sourcedocs < Formula
  desc "Command Line Tool written in Swift that generates Markdown files from inline source code documentation"
  homepage "https://github.com/eneko/SourceDocs"
  version "0.2.0"
  url "https://github.com/eneko/SourceDocs/archive/#{version}.tar.gz"
  sha256 "086e5de5fe24c3a1da44751765628b5aef178b5a778c3a806455df7f38016978"
  head "https://github.com/eneko/SourceDocs.git"

  depends_on :xcode

  # def install
  #   system "make", "install", "PREFIX=#{prefix}"
  # end
  def install
    build_path = "#{buildpath}/.build/release/sourcedocs"
    ohai "Building SourceDocs"
    system("swift build --disable-sandbox -c release -Xswiftc -static-stdlib")
    bin.install build_path
  end
end
