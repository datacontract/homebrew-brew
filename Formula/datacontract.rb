class Datacontract < Formula
  include Language::Python::Virtualenv
  desc "The datacontract CLI is an open source command-line tool for working with Data Contracts. It uses data contract YAML files to lint the data contract, connect to data sources and execute schema and quality tests, detect breaking changes, and export to different formats. The tool is written in Python."
  homepage "https://cli.datacontract.com/"
  url "https://github.com/datacontract/cli/releases/download/v0.9.3/datacontract-cli-0.9.3.tar.gz"
  sha256 "4f8e8423eedf6381828b9b354c434cc6d3f94ebcf09b43ebabc7fc32ccc5ed78"
  license "MIT"

  depends_on "python@3.11"

  def install
    venv = virtualenv_create(libexec, "python3", without_pip: false)
    venv.pip_install "setuptools"
    venv.pip_install "wheel"
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/datacontract", "--version"
  end
end
