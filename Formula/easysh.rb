class Easysh < Formula
  include Language::Python::Virtualenv

  desc "Human-friendly interactive shell that translates simple words into real commands"
  homepage "https://github.com/g-dos/easysh"
  url "https://github.com/g-dos/easysh/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a9ce4b3fe91be28a83e66fe95cb337c124e02b8210d9bb9a38f1f9679d0b24d2"
  license "MIT"

  depends_on "python@3.13"

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/35/a2/8e3becb46433538a38726c948d3399905a4c7cabd0df578ede5dc51f0ec2/wcwidth-0.6.0.tar.gz"
    sha256 "cdc4e4262d6ef9a1a57e018384cbeb1208d8abbc64176027e2c2455c81313159"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/a1/96/06e01a7b38dce6fe1db213e061a4602dd6032a8a97ef6c1a862537732421/prompt_toolkit-3.0.52.tar.gz"
    sha256 "28cde192929c8e7321de85de1ddbe736f1375148b02f2e17edd840042b1be855"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_predicate bin/"easysh", :exist?
  end
end
