class Datacontract < Formula
  desc "Manage your datacontract.yaml files"
  homepage "https://cli.datacontract.com/"
  url "https://github.com/datacontract/cli.git", tag: "v0.2.0", revision: "09da8ceb09a8c4b21303c1af65e65769adbc25f3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"datacontract"
  end

  test do
    assert_match "datacontract version v0.2.0", shell_output("#{bin}/datacontract -v")
  end
end
