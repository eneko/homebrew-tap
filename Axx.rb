class Axx < Formula
  desc "Encrypt / decrypt files from the terminal"
  homepage "https://github.com/eneko/Axx"
  version "0.1.0"
  url "https://github.com/eneko/Axx/archive/#{version}.tar.gz"
  sha256 "b7ed391502c6a28edc4858b2fd0aa170ae255675c4fc05a903fab026563e0761"
  head "https://github.com/eneko/Axx.git"

  depends_on :xcode => ["10.0"]

  def install
    build_path = "#{buildpath}/.build/release/axx"
    system("swift build --disable-sandbox -c release")
    bin.install build_path
  end
end
