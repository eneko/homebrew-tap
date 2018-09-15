class Random < Formula
  desc "Command Line Tool for random operations"
  homepage "https://github.com/eneko/Random"
  version "0.0.1"
  url "https://github.com/eneko/Random/archive/#{version}.tar.gz"
  sha256 "8763c2d2a472fb61bb9c869ec023a2a67ba9a8eed3a0eef0dfd834ae45e22c21"
  head "https://github.com/eneko/Random.git"

  depends_on :xcode => ["10.0"]

  def install
    build_path = "#{buildpath}/.build/release/random"
    ohai "Building Random"
    system("swift build --disable-sandbox -c release -Xswiftc -static-stdlib")
    ohai "Installing Random..."
    bin.install build_path
  end
end
