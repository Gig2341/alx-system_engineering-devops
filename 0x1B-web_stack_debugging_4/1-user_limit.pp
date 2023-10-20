# A manifest to set system-wide nofile ulimit values for the holberton user

# Increase nofile hard ulimit
exec { 'nofile-hard':
  command => 'sed -i "/holberton hard/s/5/10240/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}

# Increase nofile soft ulimit
exec { 'nofile-soft':
  command => 'sed -i "/holberton soft/s/4/8192/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}
