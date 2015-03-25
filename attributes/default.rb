default['docker']['creds']['databag']           = 'credentials'
default['docker']['user']                       = 'arjun'

# Default directory to store Dockerfile.
default['docker']['directory']                  = '/tmp/docker'

# Default docker base image.
default['docker']['base']['image']['name']      = 'ubunbu'

# Default docker image name.
default['docker']['image']['name']              = 'ubuntu_demo'

# Default docker image tag.
default['docker']['image']['tag']               = 'v1'

# Default array of commands to build docker image.
default['docker']['build']['commands']          = ['mkdir /var/lib/myapp']

# Default entry point
default['docker']['build']['entry_point']       = ''