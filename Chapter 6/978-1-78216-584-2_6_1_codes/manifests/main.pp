include java
#include apt
#include stdlib

package { ["vim",
	           "curl",
	           "git-core",
	           "zsh"]:
	  ensure => present
	  }

exec {
		"download_jmeter":
		command => "curl -L http://www.bizdirusa.com/mirrors/apache/jmeter/binaries/apache-jmeter-2.9.tgz | tar zx",
		creates => "/home/vagrant/apache-jmeter-2.9",		
		timeout => 0,
		cwd => "/home/vagrant",
		user => "vagrant",
		path => "/usr/bin/:/bin",
		#logoutput => true,		
		require => Package[ "curl" ]
	}
