name 'docker-confectionery'
maintainer 'Arjun Hariharan'
maintainer_email 'harjun1601@gmail.com'
license 'All rights reserved'
description 'Installs/Configures docker-confectionery'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

depends 'docker', '~> 0.36.0'
depends 'chef-client', '~> 4.2.4'
