class MiniAgent < Formula
  include Language::Python::Virtualenv

  desc "A minimal agent running in your terminal"
  homepage "https://github.com/kowyo/mini-agent"
  url "https://github.com/kowyo/mini-agent/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "376d1b92bc16ad5c4bc55a233e753b5d4c57b4b30700e17b7b1c8c6f304bd624"
  license "MIT"

  depends_on "python@3.14"

  resource "anthropic" do
    url "https://files.pythonhosted.org/packages/28/52/230d894e8117324b9c2f8f8d28ca4d584c91bd5dc7c7c420eb4e3e22cc58/anthropic-0.86.0.tar.gz"
    sha256 "376d1b92bc16ad5c4bc55a233e753b5d4c57b4b30700e17b7b1c8c6f304bd624"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/8b/c1/80130de3bb191aae25a2e29847a624efba8657d8a55d9d0d8507f5c6ce45/prompt_toolkit-3.0.51.tar.gz"
    sha256 "376d1b92bc16ad5c4bc55a233e753b5d4c57b4b30700e17b7b1c8c6f304bd624"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/88/2c/2b141cddca08e6f4027b08d6869fcad2f02c73cb5f1fb7d61b8e0af30c77/python_dotenv-1.2.2.tar.gz"
    sha256 "376d1b92bc16ad5c4bc55a233e753b5d4c57b4b30700e17b7b1c8c6f304bd624"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/eb/5f/22f88122a30e5c1008b0f507d4ebeb8e5f7593a2b9d32b8bf9a9c92eea72/pyyaml-6.0.2.tar.gz"
    sha256 "376d1b92bc16ad5c4bc55a233e753b5d4c57b4b30700e17b7b1c8c6f304bd624"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/a1/06/e53462b765d311abb42e5df8ab75746783f6d8d0d0c61b6dc8d8b2522a9f/rich-14.3.3.tar.gz"
    sha256 "376d1b92bc16ad5c4bc55a233e753b5d4c57b4b30700e17b7b1c8c6f304bd624"
  end

  resource "tomli-w" do
    url "https://files.pythonhosted.org/packages/19/25/6d3379292c831f1ac979ca1e5c33b0741f2a76b63a587b1c65b7a273f800/tomli_w-1.2.0.tar.gz"
    sha256 "376d1b92bc16ad5c4bc55a233e753b5d4c57b4b30700e17b7b1c8c6f304bd624"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/1c/ab/c9f1e32b7e1e50a857ab9b4a5c3b8e4d8d9e6a8e9b0c1d2e3f4a5b6c7d8e9/certifi-2024.2.2.tar.gz"
    sha256 "376d1b92bc16ad5c4bc55a233e753b5d4c57b4b30700e17b7b1c8c6f304bd624"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816c7a45f5c9a9a5e7a9b0c1d2e3f4a5b6c7d8e9f0a1b2c/charset-normalizer-3.3.2.tar.gz"
    sha256 "376d1b92bc16ad5c4bc55a233e753b5d4c57b4b30700e17b7b1c8c6f304bd624"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa2978428b965feeea2d416ad5730d28ffab9c9a/idna-3.7.tar.gz"
    sha256 "376d1b92bc16ad5c4bc55a233e753b5d4c57b4b30700e17b7b1c8c6f304bd624"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2b9dc75a3f36e5e48d5f2a69b0d8e6c2e8f2c2d8f3e4a5b6c7d8e9/requests-2.31.0.tar.gz"
    sha256 "376d1b92bc16ad5c4bc55a233e753b5d4c57b4b30700e17b7b1c8c6f304bd624"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7a/50/7f50a217b581a302e6d8a9b13b1e3e1f2e4e5d6c7b8a9f0e1d2c3b4a5f6e7/urllib3-2.2.1.tar.gz"
    sha256 "376d1b92bc16ad5c4bc55a233e753b5d4c57b4b30700e17b7b1c8c6f304bd624"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mini-agent --version")
  end
end
