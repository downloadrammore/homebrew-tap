class Tmx < Formula
  desc "portable C library to load tiled maps in your games."
  homepage "https://github.com/baylej/tmx"
  url "https://github.com/baylej/tmx/archive/tmx_0.15.1.zip"
  sha256 "d28cb13a72d7c2f6123bc8044e3d679ac76814965f24f617e8547b3375391417"

  depends_on "cmake" => :build
  depends_on "libxml2"	# requires libxml2

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "[", "-e", "#{include}/tmx.h", "]"
  end
end
