require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class GitPastiche < Formula
  homepage 'https://bitbucket.org/ssaasen/git-pastiche/overview'
  head 'https://bitbucket.org/ssaasen/git-pastiche.git'

  depends_on 'git'
  def install
    Dir.foreach('bin') do |item|
      next if item == '.' or item == '..'
      bin.install "bin/" + item
    end
    Dir.foreach('man') do |item|
      next if item == '.' or item == '..'
      man1.install "man/" + item
    end
  end
end
