class local_yum_repo {

  yumrepo { 'local_yum':
    name => 'local_yum',
    enabled => 1,
    descr => 'Local epel repo for app pckgs',
    baseurl => 'file:///packages/downloaded_rpms',
    gpgcheck => 0,
  }

  package { 'vsftpd':
    ensure  => 'installed',
    require => Yumrepo['local_yum'],        
  }
}

node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {
  include local_yum_repo
}
