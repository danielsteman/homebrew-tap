class Bundlecues < Formula
  desc "Validate Databricks asset bundles using CUE"
  homepage "https://github.com/danielsteman/bundle-cues"
  url "https://github.com/danielsteman/bundle-cues/releases/download/v0.1.0/bundlecues_darwin_arm64.tar.gz"
  sha256 "091c254d5a215880a5944c0c8b371b87e058ca3748d966fe8f596c898dfb65a0"
  license "MIT"

  def install
    bin.install "bundlecues"
  end

  test do
    system "#{bin}/bundlecues", "--help"
  end
end

