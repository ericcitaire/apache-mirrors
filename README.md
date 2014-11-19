apache-mirrors Cookbook
=======================

Description
-----------

Provides a simple way to download files from Apache mirrors, using the suggested mirror.

Usage
-----

```ruby
zk_version = '3.3.6'
apache_mirrors_download "#{Chef::Config[:file_cache_path]}/zookeeper-#{zk_version}.tar.gz" do
  path "zookeeper/zookeeper-#{zk_version}/zookeeper-#{zk_version}.tar.gz"
end
```

