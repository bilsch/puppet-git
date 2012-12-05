define git::clone(
  $target,
  $owner,
  $group,
  $repo,
  $path_env = ['/usr/bin','/usr/local/bin','/opt/local/bin'] ) {

  include git

  file { $target:
    ensure    => directory,
    owner     => $owner,
    group     => $group,
    subscribe => Exec["git clone $title $repo $target"],
  }

  exec { "git clone $title $repo $target":
    path    => $path_env,
    command => "git clone $repo $target",
    user    => $owner,
    group   => $group,
    onlyif  => "test ! -d $target",
    require => Package['git'],
  }
}
