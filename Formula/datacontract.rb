class Datacontract < Formula
  desc "Manage your datacontract.yaml files"
  homepage "https://cli.datacontract.com/"
  url "https://github.com/datacontract/cli.git", tag: "v0.4.0", revision: "cea08af1d5120bf401d862b1584a5eb674bbcfca"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"datacontract", "cmd/datacontract.go"
  end

  test do
    assert_match "datacontract version v0.3.2", shell_output("#{bin}/datacontract -v")
  end
end
