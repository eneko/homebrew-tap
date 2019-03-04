class Axx < Formula
  desc "Encrypt / decrypt files from the terminal"
  homepage "https://github.com/eneko/Axx"
  version "0.0.1"
  url "https://github.com/eneko/Axx/archive/#{version}.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  head "https://github.com/eneko/Axx.git"

  depends_on :xcode => ["10.0"]

  def install
    build_path = "#{buildpath}/.build/release/axx"
    system("swift build --disable-sandbox -c release -Xswiftc -static-stdlib")
    bin.install build_path
  end
end
