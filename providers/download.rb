
def whyrun_supported?
  true
end

use_inline_resources

action :download do
  require 'json'
  require 'open-uri'

  mirrors = JSON.load(open("http://www.apache.org/dyn/closer.cgi?path=#{new_resource.path}&asjson=1"))
  url = "#{mirrors['preferred']}#{mirrors['path_info']}"

  Chef::Log.info("Downloading '#{url}' to '#{new_resource.name}'")
  remote_file new_resource.name do
    source url
  end
end

