class git {
  $git_pkgs = $::osfamily ? {
    'Debian' => [ 'git', 'git-core', ],
    'RedHat' => [ 'git', ],
    default => undef
  }

  package { $git_pkgs:
    ensure => installed,
  }
}
