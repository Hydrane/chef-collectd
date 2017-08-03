#
# Cookbook:: chef-collectd
# Recipe:: config
#

template 'collectd.conf' do
  mode     '0644'
  source   'conf.erb'
  path     node['collectd']['cfile']
  variables(conf: node['collectd']['conf'])
end
