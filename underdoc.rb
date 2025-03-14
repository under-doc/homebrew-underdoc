class Underdoc < Formula
    include Language::Python::Virtualenv

    desc "CLI for interacting with Underdoc API"
    homepage "https://underdoc.io" # Your project's homepage
    url "https://github.com/under-doc/underdoc-cli/archive/refs/tags/0.1.0.tar.gz" # Replace with your release URL
    sha256 "31eb239443e5e98e63203ceffd07144510f003268333a8c3ed2cb1c000435bb1" # Generate using shasum -a 256 <your-archive.tar.gz>
    license "MIT" # Replace with your license
  
    depends_on "python@3.12" # Or your preferred Python version
  
    def install
        venv = virtualenv_create(libexec)
        %w[click httpx pydantic].each do |r|
            venv.pip_install resource(r)
        end
        venv.pip_install_and_link buildpath
    end
  end
