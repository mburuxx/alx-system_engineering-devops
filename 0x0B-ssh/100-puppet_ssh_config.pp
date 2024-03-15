#!/usr/bin/env bash
# client SSH configuration file using puppet
file { '~/.ssh/config':
  ensure => present,
  mode   => '0600',
  content => "
    Host 52.91.127.207
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
  ",
}
