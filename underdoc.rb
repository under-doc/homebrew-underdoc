class Underdoc < Formula
    include Language::Python::Virtualenv

    desc "CLI for interacting with Underdoc API"
    homepage "https://underdoc.io" # Your project's homepage
    url "https://github.com/under-doc/underdoc-cli/archive/refs/tags/0.1.0.tar.gz" # Replace with your release URL
    sha256 "31eb239443e5e98e63203ceffd07144510f003268333a8c3ed2cb1c000435bb1" # Generate using shasum -a 256 <your-archive.tar.gz>
    license "MIT" # Replace with your license
  
    depends_on "python@3.12" # Or your preferred Python version

    resource "httpcore" do
        url "https://files.pythonhosted.org/packages/6a/41/d7d0a89eb493922c37d343b607bc1b5da7f5be7e383740b4753ad8943e90/httpcore-1.0.7.tar.gz"
        sha256 "8551cb62a169ec7162ac7be8d4817d561f60e08eaa485234898414bb5a8a0b4c"
    end

    resource "idna" do
        url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
        sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
    end

    resource "click" do
        url "https://files.pythonhosted.org/packages/b9/2e/0090cbf739cee7d23781ad4b89a9894a41538e4fcf4c31dcdd705b78eb8b/click-8.1.8.tar.gz"
        sha256 "ed53c9d8990d83c2a27deae68e4ee337473f6330c040a31d4225c9574d16096a"
    end
    
    resource "httpx" do
        url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
        sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
    end

    resource "pydantic" do
        url "https://files.pythonhosted.org/packages/b7/ae/d5220c5c52b158b1de7ca89fc5edb72f304a70a4c540c84c8844bf4008de/pydantic-2.10.6.tar.gz"
        sha256 "ca5daa827cce33de7a42be142548b0096bf05a7e7b365aebfa5f8eeec7128236"
    end

    resource "pydantic_core" do
        url "https://files.pythonhosted.org/packages/df/ce/f4c0e43c788ebb10a8b107c9774169091a0b8b3a62b3f76ca528d1e79bf0/pydantic_core-2.31.1.tar.gz"
        sha256 "a9cc2f56cba2b78b487325ff3de016a70670b615eaf00cad88cb17f271e01971"
    end
    
    def install
        virtualenv_install_with_resources
    end
  end
