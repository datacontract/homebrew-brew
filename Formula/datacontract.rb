class Datacontract < Formula
  desc "manage your datacontract.yaml files "
  homepage "https://cli.datacontract.com/"
  version "v0.1.1"
  url "https://github.com/datacontract/cli.git",
      tag: version
  sha256 "c511e97680393b9b53a4531942deb9148a0a715de4698163df225546b7b8b1e9"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"datacontract"
  end

  test do
    assert_match "datacontract version #{version}", shell_output("#{bin}/datacontract -v")
  end
end
