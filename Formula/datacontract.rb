class Datacontract < Formula
  desc "Manage your datacontract.yaml files"
  homepage "https://cli.datacontract.com/"
  url "https://github.com/datacontract/cli.git", tag: "v0.5.1", revision: "bfb2ce3d1c57ec5a19bbf5ef389fb55fe38d6a71"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"datacontract", "cmd/datacontract.go"
  end

  test do
    assert_match "datacontract version v0.3.2", shell_output("#{bin}/datacontract -v")
  end
end
