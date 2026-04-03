class MiniAgent < Formula
  include Language::Python::Virtualenv

  desc "A minimal agent"
  homepage "https://github.com/kowyo/mini-agent"
  url "https://github.com/kowyo/mini-agent/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "b116738cbb453805f8544ff4df326e3e49b65f079612bbfefa7ddc0a9a0479f8"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/mini-agent", "--help"
  end
end
