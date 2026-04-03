class MiniAgent < Formula
  include Language::Python::Virtualenv

  desc "A minimal agent running in your terminal"
  homepage "https://github.com/kowyo/mini-agent"
  url "https://github.com/kowyo/mini-agent/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "1d287adb406f95ff778b42cea26b825760de405ba370f4f1222f1911574e6833"
  license "MIT"

  depends_on "python@3.14"

  resource "anthropic" do
    url "https://files.pythonhosted.org/packages/28/52/230d894e8117324b9c2f8f8d28ca4d584c91bd5dc7c7c420eb4e3e22cc58/anthropic-0.86.0.tar.gz"
    sha256 "a94a6b5d7c5272b6aa7a7e690b7ea50ee47fc9a183870f4975c91d4715bb10fe"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/8b/c1/80130de3bb191aae25a2e29847a624efba8657d8a55d9d0d8507f5c6ce45/prompt_toolkit-3.0.51.tar.gz"
    sha256 "931a162e3b27fc90c86d1e3654f617c446d6655e3637f0c25a6da06df05fb42b"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/88/2c/2b141cddca08e6f4027b08d6869fcad2f02c73cb5f1fb7d61b8e0af30c77/python_dotenv-1.2.2.tar.gz"
    sha256 "dfa065c2d6e814805a7add1a7c490d24d4d4d477d6e1bd168e6773ae1c0d6f2b"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/eb/5f/22f88122a30e5c1008b0f507d4ebeb8e5f7593a2b9d32b8bf9a9c92eea72/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe14ac11b7d77e50"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/a1/06/e53462b765d311abb42e5df8ab75746783f6d8d0d0c61b6dc8d8b2522a9f/rich-14.3.3.tar.gz"
    sha256 "df770ed5c3b3d03cc72c528ff1c7506efa9c85f4e6d981d2c30d2c8c3a88d50a"
  end

  resource "tomli-w" do
    url "https://files.pythonhosted.org/packages/19/25/6d3379292c831f1ac979ca1e5c33b0741f2a76b63a587b1c65b7a273f800/tomli_w-1.2.0.tar.gz"
    sha256 "2dd14fac5a8650a8644b7fc29b464436f840089087247d5e3027014e564865ae"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/1c/ab/c9f1e32b7e1e50a857ab9b4a5c3b8e4d8d9e6a8e9b0c1d2e3f4a5b6c7d8e9/certifi-2024.2.2.tar.gz"
    sha256 "0569859f95fc761b18b45ef421b1290a0f65f147e92a1e5eb3e635f9ccb5ac91"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816c7a45f5c9a9a5e7a9b0c1d2e3f4a5b6c7d8e9f0a1b2c/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa2978428b965feeea2d416ad5730d28ffab9c9a/idna-3.7.tar.gz"
    sha256 "028ff3aadf0609c1fd278d8ea3089299412a7a8b9bd005dd08b9f5a7a3f8f2b0"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2b9dc75a3f36e5e48d5f2a69b0d8e6c2e8f2c2d8f3e4a5b6c7d8e9/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7a/50/7f50a217b581a302e6d8a9b13b1e3e1f2e4e5d6c7b8a9f0e1d2c3b4a5f6e7/urllib3-2.2.1.tar.gz"
    sha256 "d0570876c61ab9e520d776c38acbbb5b771a8a3a9e5e5e0e3e2b8b0c2d1e3f4a5"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mini-agent --version")
  end
end
