name             'chef-collectd'
version          '0.1.0'
license          'Apache-2.0'
maintainer       'Robert Veznaver'
maintainer_email 'rv@bidmotion.com'
description      'Installs/Configures collectd'
issues_url       'https://github.com/Hydrane/chef-collectd/issues'
source_url       'https://github.com/Hydrane/chef-collectd'
chef_version     '>= 12.19.36'

depends  'yum-epel'

supports 'centos', '>= 7'
supports 'redhat', '>= 7'
supports 'oracle', '>= 7'
supports 'fedora', '>= 15'

supports 'debian', '>= 8'
supports 'ubuntu', '>= 15.04'

supports 'opensuseleap', '>= 42.1'
