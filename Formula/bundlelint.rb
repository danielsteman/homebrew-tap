class Bundlelint < Formula
  desc "Opinionated validation tool for Databricks asset bundles"
  homepage "https://github.com/danielsteman/bundlelint"
  
  if Hardware::CPU.arm?
    url "https://github.com/danielsteman/bundlelint/releases/download/v1.0.0/bundlelint_1.0.0_darwin_arm64.tar.gz"
    sha256 "2fb636fea1da776dafa8d9057b6940e803981cd3939801b41bda8a4cabf903d5"
  else
    url "https://github.com/danielsteman/bundlelint/releases/download/v1.0.0/bundlelint_1.0.0_darwin_amd64.tar.gz"
    sha256 "5d701e3f3705394f484f64ab925ef1eb57ffbc4858963bd6f95189d875dd49db"
  end

  license "MIT"

  def install
    bin.install "bundlelint"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/bundlelint --help")
  end
end

