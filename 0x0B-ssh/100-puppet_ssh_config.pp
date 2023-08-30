#!/usr/bin/env bash
# Turns off password authentication and uses school key

file { 'etc/ssh/ssh_config':
	ensure => present,

content =>"
	#ssh client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}
