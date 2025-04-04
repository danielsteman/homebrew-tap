class Bundlecues < Formula
  desc "Validate Databricks asset bundles using CUE"
  homepage "https://github.com/danielsteman/bundlecues"
  url "https://github.com/danielsteman/bundlecues/releases/download/v0.1.0/bundlecues_darwin_arm64.tar.gz"
  sha256 "bc752f7a266c5f8d7d77245f04f27feaa3e644d3e124b0e8851c911161e13be0"
  license "MIT"

  def install
    bin.install "bundlecues"
  end

  test do
    system "#{bin}/bundlecues", "--help"
  end
end

