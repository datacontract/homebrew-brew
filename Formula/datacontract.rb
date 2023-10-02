class Datacontract < Formula
  desc "Manage your datacontract.yaml files"
  homepage "https://cli.datacontract.com/"
  url "https://github.com/datacontract/cli.git", tag: "v0.3.0", revision: "bd1fb01d236cd82fd48aae4a993464b259604225"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"datacontract"
  end

  test do
    assert_match "datacontract version v0.3.0", shell_output("#{bin}/datacontract -v")
  end
end
