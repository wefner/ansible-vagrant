@hosts = [
  {
    :name => :proxy1,
    :group => ["proxy"],
    :forwards => { 443 => 4443 },
    :sshport => { 22 => 2210 },
    :ip => "172.16.1.120"
  },
  {
    :name => :proxy2,
    :group => ["proxy"],
    :forwards => { 443 => 4444 },
    :sshport => { 22 => 2211 },
    :ip => "172.16.1.121"
  },
  {
    :name => :webserver1,
    :group => ["web"],
    :forwards => { 80 => 8080, 5405 => 5000 },
    :sshport => { 22 => 2212 },
    :ip => "172.16.1.100",
    :disk => "./tmp/extra_disk1.vdi"
  },
  {
    :name => :webserver2,
    :group => [ "web", "gluster_slaves" ],
    :forwards => { 80 => 8081, 5405 => 5001 },
    :sshport => { 22 => 2213 },
    :ip => "172.16.1.101",
    :disk => "./tmp/extra_disk2.vdi"
  },
  {
    :name => :webserver3,
    :group => [ "web", "gluster_slaves" ],
    :forwards => { 80 => 8082, 5405 => 5002 },
    :sshport => { 22 => 2214 },
    :ip => "172.16.1.102",
    :disk => "./tmp/extra_disk3.vdi"
  },
  {
    :name => :webserver4,
    :group => [ "web", "gluster_slaves" ],
    :forwards => { 80 => 8081, 5405 => 5001 },
    :sshport => { 22 => 2220 },
    :ip => "172.16.1.105",
  },
  {
    :name => :webserver5,
    :group => [ "web", "gluster_slaves" ],
    :forwards => { 80 => 8082, 5405 => 5002 },
    :sshport => { 22 => 2224 },
    :ip => "172.16.1.106",
  },
  {
    :name => :mgmt1,
    :group => [ "db", "mgmt" ],
    :forwards => { 3306 => 3333 },
    :sshport => { 22 => 2215 },
    :ip => "172.16.1.110"
  },
  {
    :name => :datanode1,
    :group => [ "db", "datanodes" ],
    :forwards => { 3306 => 3334 },
    :sshport => { 22 => 2216 },
    :ip => "172.16.1.111"
  },
  {
    :name => :sqlnode1,
    :group => [ "db", "sqlnodes" ],
    :forwards => { 3306 => 3335 },
    :sshport => { 22 => 2217 },
    :ip => "172.16.1.112"
  }
]