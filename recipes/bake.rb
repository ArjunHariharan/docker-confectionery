# Generate a docker file using template.
template "#{node['docker']['directory']}/Dockerfile" do
  source 'dockerfile.erb'
  variables image: node['docker']['base']['image'],
            maintainer: @docker_cred['maintainer'],
            build_cmd: node['docker']['build']['commands']

  action :create
end

# Build a docker image using docker_image resource
docker_image node['docker']['image'] do
  tag node['docker']['image']['tag']
  source '/var/docker'

  action :build_if_missing
end

# Push the image to docker registery
docker_image node['docker']['image'] do
  action :push
end

# Delete the image from the machine
docker_image node['docker']['image'] do
  action :remove
end
