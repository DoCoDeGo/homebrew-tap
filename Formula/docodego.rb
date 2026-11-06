class Docodego < Formula
  desc "The intent-and-evidence layer for the agent age"
  homepage "https://docodego.com"
  version "0.7.1"
  license "MIT"

  livecheck do
    url "https://github.com/DoCoDeGo/docodego-alpha/releases/latest"
    regex(%r{releases/tag/v?(\d+\.\d+\.\d+)}i)
  end

  on_arm do
    url "https://github.com/DoCoDeGo/docodego-alpha/releases/download/v#{version}/docodego-darwin-arm64"
    sha256 "1b51a1e14b5babc016d922b5dd6de51a1ce0e0d5fd42472aaec9015715e92e3f"

    def install
      bin.install "docodego-darwin-arm64" => "docodego"
    end
  end
  on_intel do
    url "https://github.com/DoCoDeGo/docodego-alpha/releases/download/v#{version}/docodego-darwin-x64"
    sha256 "713319b1be79da605a18e2ad42ec9fd2d8257df5b86c18375163a19063afb63a"

    def install
      bin.install "docodego-darwin-x64" => "docodego"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/docodego --version")
  end
end
