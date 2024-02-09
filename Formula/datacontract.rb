class Datacontract < Formula
  include Language::Python::Virtualenv
  desc "The datacontract CLI is an open source command-line tool for working with Data Contracts. It uses data contract YAML files to lint the data contract, connect to data sources and execute schema and quality tests, detect breaking changes, and export to different formats. The tool is written in Python."
  homepage "https://cli.datacontract.com/"
  url "https://github.com/datacontract/cli/releases/download/v0.9.2/datacontract-cli-0.9.2.tar.gz"
  sha256 "5e527225fa10c32d23403000435564f5a16705fe657c40231cb68f29c9d698f3"
  license "MIT"

  depends_on "python@3.11"

  def install
    venv = virtualenv_create(libexec, "python3")
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/datacontract", "--version"
  end
end
