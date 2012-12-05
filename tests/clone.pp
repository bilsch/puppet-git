
git::clone { "bilsch oh-my-zsh":
  target => '/home/bilsch/.oh-my-zsh',
  repo   => 'https://github.com/robbyrussell/oh-my-zsh.git',
  owner  => 'bilsch',
  group  => 'bilsch',
}
