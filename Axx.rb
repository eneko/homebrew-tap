class Axx < Formula
  desc "Encrypt / decrypt files from the terminal"
  homepage "https://github.com/eneko/Axx"
  version "0.0.1"
  url "https://github.com/eneko/Axx/archive/#{version}.tar.gz"
  sha256 "2a5e9e0cc907bf02ca2f4a5997d7d9d9ecc88931ab72e3083606d00adfcdcee7"
  head "https://github.com/eneko/Axx.git"

  depends_on :xcode => ["10.0"]

  def install
    build_path = "#{buildpath}/.build/release/axx"
    system("swift build --disable-sandbox -c release -Xswiftc -static-stdlib")
    bin.install build_path
  end
end
