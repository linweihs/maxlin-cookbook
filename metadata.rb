name             'maxlin-cookbook'
maintainer       'maxlin'
maintainer_email 'max.linweihs@gmail.com'
license          'All rights reserved'
description      'Installs/Configures maxlin-cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

# use other cookbook's recipe, e.g
#depends          'ssh-keys' // use 'ssh_authorized_keys' instead
#depends          'ssh_authorized_keys'
depends          'users'
depends          'sshd'
