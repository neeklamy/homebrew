class Osxlockdown < Formula
  desc "OS X tool to audit and remediate, security configuration settings."
  homepage "https://github.com/SummitRoute/osxlockdown"
  url "https://github.com/SummitRoute/osxlockdown/archive/0.9.tar.gz"
  sha256 "f7303848a1602d7ee5abaf8c5ef1eaa837d22358002647b5d31adb8c50dc011f"

  depends_on "go"

  def install
    system "go", "build", "osxlockdown"
  end

  test do
    system "osxlockdown"
  end
end
