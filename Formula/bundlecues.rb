class Bundlecues < Formula
  desc "Validate Databricks asset bundles using CUE"
  homepage "https://github.com/danielsteman/bundlecues"
  url "https://github.com/danielsteman/bundlecues/releases/download/v0.1.0/bundlecues_darwin_arm64.tar.gz"
  sha256 "8e3ffa3994a3dee75f127a3aaa78010c39f454021c544d760de795025a69e7f7"
  license "MIT"

  def install
    bin.install "bundlecues"
  end

  test do
    system "#{bin}/bundlecues", "--help"
  end
end

