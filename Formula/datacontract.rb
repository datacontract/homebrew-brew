class Datacontract < Formula
  desc "Manage your datacontract.yaml files"
  homepage "https://cli.datacontract.com/"
  url "https://github.com/datacontract/cli.git", tag: "v0.5.0", revision: "35bb4228540b65798acd3eefc4c5a7207905e6f7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"datacontract", "cmd/datacontract.go"
  end

  test do
    assert_match "datacontract version v0.3.2", shell_output("#{bin}/datacontract -v")
  end
end
