class Underdoc < Formula
    desc "CLI for interacting with Underdoc API"
    homepage "https://underdoc.ai" # Your project's homepage
    url "https://github.com/under-doc/underdoc-cli/archive/refs/tags/0.1.0.tar.gz" # Replace with your release URL
    sha256 "31eb239443e5e98e63203ceffd07144510f003268333a8c3ed2cb1c000435bb1" # Generate using shasum -a 256 <your-archive.tar.gz>
    license "MIT" # Replace with your license
  
    depends_on "python@3.10" # Or your preferred Python version
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink libexec/"underdoc/bin/underdoc" # Adjust the path to your executable
      python3 = Formula["python@3.10"].opt_bin/"python3" # Or your preferred python version
      system python3, "-m", "pip", "install", "-e", libexec
    end
  
    test do
      system "#{bin}/underdoc", "--help"
    end
  end
