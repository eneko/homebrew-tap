class Sourcedocs < Formula
  desc "Command Line Tool that generates Markdown files from inline source code documentation"
  homepage "https://github.com/eneko/SourceDocs"
  version "0.4.0"
  url "https://github.com/eneko/SourceDocs/archive/#{version}.tar.gz"
  sha256 "e57c8852ee7bbe8f1f4f85331972b4a87c5c8d62e621c52238763ed780732d66"
  head "https://github.com/eneko/SourceDocs.git"

  depends_on :xcode

  def install
    ohai "Installing SourceDocs..."
    system "make", "install", "PREFIX=#{prefix}"
  end
#   def install
#     build_path = "#{buildpath}/.build/release/sourcedocs"
#     ohai "Building SourceDocs"
#     system("swift build --disable-sandbox -c release -Xswiftc -static-stdlib")
#     bin.install build_path
#   end
end
