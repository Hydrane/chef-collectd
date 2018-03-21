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

supports 'centos'
supports 'redhat'
supports 'oracle'
supports 'fedora'

supports 'debian'
supports 'ubuntu'

supports 'opensuseleap'
