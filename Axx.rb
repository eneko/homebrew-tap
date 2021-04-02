class Axx < Formula
  desc "Encrypt / decrypt files from the terminal"
  homepage "https://github.com/eneko/Axx"
  version "0.0.2"
  url "https://github.com/eneko/Axx/archive/#{version}.tar.gz"
  sha256 "6289d56e4b9ff5bcb56a78bb8175d5c00786ec19e1ea7b930395857225b19490"
  head "https://github.com/eneko/Axx.git"

  depends_on :xcode => ["10.0"]

  def install
    build_path = "#{buildpath}/.build/release/axx"
    system("swift build --disable-sandbox -c release")
    bin.install build_path
  end
end
