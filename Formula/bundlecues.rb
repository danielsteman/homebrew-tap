class Bundlecues < Formula
  desc "Validate Databricks asset bundles using CUE"
  homepage "https://github.com/danielsteman/bundle-cues"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/danielsteman/bundle-cues/releases/download/v0.1.1/bundlecues_darwin_arm64.tar.gz"
      sha256 "4ebbeeda96c14765af60cf4c6ef103ded9671980b16056835aa4f6e5ce637f49"
    elsif Hardware::CPU.intel?
      url "https://github.com/danielsteman/bundle-cues/releases/download/v0.1.1/bundlecues_darwin_amd64.tar.gz"
      sha256 "68451049ecaa19cdb1cb2469870b13cafc7ed25bd732e21f373fc13097d4eed2"
    end
  end

  def install
    bin.install "bundlecues"
  end

  test do
    system "#{bin}/bundlecues", "--help"
  end
end

