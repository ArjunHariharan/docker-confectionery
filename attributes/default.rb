default['docker']['creds']['databag']   = 'credentials'
default['docker']['user']               = 'arjun'

# Default directory to store Dockerfile.
default['docker']['directory']          = '/var/docker'

# Default docker base image.
default['docker']['base']['image']      = 'ubunbu'

# Default docker image name.
default['docker']['image']              = 'ubuntu_demo'

# Default docker image tag.
default['docker']['image']['tag']       = 'v1'

# Default array of commands to build docker image.
default['docker']['build']['commands']  = ['mkdir /var/lib/temp']
