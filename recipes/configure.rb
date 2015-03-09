# Install docker
include_recipe 'docker'

# Configure chef-client
include_recipe 'chef-client::config'

# Setup chef-client to run as service
include_recipe 'chef-client'

# docker login
secret = Chef::EncryptedDataBagItem.load_secret
docker_cred = Chef::EncryptedDataBagItem.load(
                node['docker']['creds']['databag'],
                node['docker']['user'],
                secret
              )

docker_registry 'https://index.docker.io/v1/' do
  email docker_cred['email']
  username docker_cred['username']
  password docker_cred['password']
end