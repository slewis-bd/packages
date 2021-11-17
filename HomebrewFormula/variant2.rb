class Variant2 < Formula
  desc "Wrap up your bash scripts into a modern CLI today. Graduate to a full-blown golang app tomorrow."
  url "https://github.com/cloudposse/packages.git"
  version "0.38.0"

  def install
    ENV["INSTALL_PATH"] = "cloudposse"
    chdir "vendor/variant2" do
      system "make", "install"
      bin.install "cloudposse/variant2"
    end
  end
end
