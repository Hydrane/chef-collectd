#
# Cookbook:: chef-collectd
# Recipe:: service
#

unless node['collectd']['user'].eql?('root')
  group node['collectd']['group']

  user node['collectd']['user'] do
    gid         node['collectd']['group']
    shell       '/sbin/nologin'
    system      true
    manage_home false
  end
end

systemd_unit 'collectd.service' do
  content    node['collectd']['systemd']
  action     %i[create enable start]
  notifies   :restart, 'systemd_unit[collectd.service]'
  subscribes :restart, 'template[collectd.conf]'
  node['collectd']['conf'].keys.each do |key|
    subscribes :restart, "template[collectd_#{key}]"
  end
end
