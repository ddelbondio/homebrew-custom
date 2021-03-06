require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class NginxEnsite < Formula
  homepage 'https://github.com/perusio/nginx_ensite'
  url 'https://github.com/perusio/nginx_ensite/tarball/77bf95750560b0d6cc82047f5908b1eae4f0e314'
  version '20120225'
  sha256 '8b82f64770b6eac90d45f6f0b6039cbd2f43360eae8d2c1942f7bbc97fbb0303'

  depends_on 'nginx'

  def install
    nginx_etc = etc/'nginx'
    inreplace 'nginx_ensite' do |s|
      s.sub! 'NGINX_CONF_DIR=/etc/nginx', "NGINX_CONF_DIR=#{nginx_etc}"
    end

    bin.install('nginx_ensite', 'nginx_dissite')
    man.mkpath
    man8.install('man/nginx_ensite.8', 'man/nginx_dissite.8')
    [nginx_etc/'sites-available', nginx_etc/'sites-enabled'].each do |path|
      path.mkpath unless path.directory?
    end
  end

end
