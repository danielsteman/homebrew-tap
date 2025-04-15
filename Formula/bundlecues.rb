class Bundlecues < Formula
  desc "Validate Databricks asset bundles using CUE"
  homepage "https://github.com/danielsteman/bundle-cues"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/danielsteman/bundle-cues/releases/download/v0.1.1/bundlecues_darwin_arm64.tar.gz"
      sha256 "091c254d5a215880a5944c0c8b371b87e058ca3748d966fe8f596c898dfb65a0"
    elsif Hardware::CPU.intel?
      url "https://github.com/danielsteman/bundle-cues/releases/download/v0.1.1/bundlecues_darwin_amd64.tar.gz"
      sha256 "fb5a979b5f32314784e7186b0529c4cf280f50852b75f1fc9f2ce4d8c91cdc41"
    end
  end

  def install
    bin.install "bundlecues"
  end

  test do
    system "#{bin}/bundlecues", "--help"
  end
end

