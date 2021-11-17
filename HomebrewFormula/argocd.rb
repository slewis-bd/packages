class Argocd < Formula
  desc "Declarative GitOpts for Kubernetes"
  url "https://github.com/cloudposse/packages.git"
  version "2.1.6"

  def install
    ENV["INSTALL_PATH"] = "cloudposse"
    chdir "vendor/argocd" do
      system "make", "install"
      bin.install "cloudposse/argocd"
    end
  end
end
