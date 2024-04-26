class custom {
netdev_device{'device':

 ensure => undo_shutdown,

 username => 'puppet',

 password => 'capacita#123',

 ipaddr => '10.100.29.123',

 }

netdev_vlan{'vlan3':

 ensure => undo_shutdown,

 id => 3,

 require => Netdev_device['device'],

 }
}