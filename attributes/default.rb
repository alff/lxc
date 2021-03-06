default[:lxc][:start_ipaddress] = nil
default[:lxc][:validator_pem] = nil
default[:lxc][:auto_start] = true
default[:lxc][:bridge] = 'lxcbr0'
default[:lxc][:use_bridge] = true
default[:lxc][:addr] = '10.0.3.1'
default[:lxc][:netmask] = '255.255.255.0'
default[:lxc][:network] = '10.0.3.0/24'
default[:lxc][:dhcp_range] = '10.0.3.2,10.0.3.254'
default[:lxc][:dhcp_max] = '253'
default[:lxc][:shutdown_timeout] = 120
default[:lxc][:allowed_types] = %w(debian ubuntu fedora)
default[:lxc][:container_directory] = '/var/lib/lxc'
default[:lxc][:dnsmasq_lease_file] = '/var/lib/misc/dnsmasq.leases'

default[:lxc][:elecksee][:version_restriction] = '~> 1.0.8'
default[:lxc][:elecksee][:action] = :install

default[:lxc][:default_config][:lxc_auto] = node[:lxc][:auto_start]
default[:lxc][:default_config][:use_lxc_bridge] = node[:lxc][:use_bridge]
default[:lxc][:default_config][:lxc_bridge] = node[:lxc][:bridge]
default[:lxc][:default_config][:lxc_addr] = node[:lxc][:addr]
default[:lxc][:default_config][:lxc_netmask] = node[:lxc][:netmask]
default[:lxc][:default_config][:lxc_dhcp_range] = node[:lxc][:dhcp_range]
default[:lxc][:default_config][:lxc_dhcp_max] = node[:lxc][:dhcp_max]
default[:lxc][:default_config][:lxc_shutdown_timeout] = node[:lxc][:shutdown_timeout]
default[:lxc][:default_config][:mirror] = node[:lxc][:mirror] || 'http://archive.ubuntu.com/ubuntu'

default[:lxc][:knife] = {}
default[:lxc][:knife][:static_range] = ''
default[:lxc][:knife][:static_ips] = []

default[:lxc][:user_locks] = %w(ubuntu)

default[:lxc][:packages] = %w(lxc)
default[:lxc][:mirror] = 'http://archive.ubuntu.com/ubuntu'
default[:lxc][:containers] = {}

default[:lxc][:deprecated][:delete_awesome_ephemerals] = true
