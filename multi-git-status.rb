class MultiGitStatus < Formula
  desc "Show uncommitted, untracked and unpushed changes for multiple Git repos"
  homepage "https://github.com/fboender/multi-git-status/"
  license "MIT"
  head "https://github.com/fboender/multi-git-status.git"


  def install
    # we can't install using "make" since that relies on "install -m" which isn't supported on mac by default
    bin.install('mgitstatus')
    man.mkpath
    man1.install('mgitstatus.1')
  end

end
