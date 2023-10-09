class Datacontract < Formula
  desc "Manage your datacontract.yaml files"
  homepage "https://cli.datacontract.com/"
  url "https://github.com/datacontract/cli.git", tag: "v0.3.2", revision: "3961a035336a0fa2341d40539f7eda8f7f237a2f"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"datacontract"
  end

  test do
    assert_match "datacontract version v0.3.2", shell_output("#{bin}/datacontract -v")
  end
end
