#
# Collectd options
#
default['collectd']['user']  = 'collectd'
default['collectd']['group'] = 'daemon'
default['collectd']['cfile'] = '/etc/collectd.conf'

#
# Systemd unit
#
default['collectd']['systemd'] = {
  'Unit'    => { 'Description' => 'collectd daemon',
                 'After'       => 'local-fs.target network.target',
                 'Requires'    => 'local-fs.target network.target' },
  'Service' => { 'Type'         => 'notify',
                 'ExecStartPre' => "/usr/sbin/collectd -t -C #{node['collectd']['cfile']}",
                 'ExecStart'    => "/usr/sbin/collectd -C #{node['collectd']['cfile']}",
                 'Restart'      => 'on-failure',
                 'User'         => node['collectd']['user'] },
  'Install' => { 'WantedBy' => 'multi-user.target' },
}

#
# Configuration (must have at least one line)
#
default['collectd']['conf']['FQDNLookup'] = true
