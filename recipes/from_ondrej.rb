#
# Cookbook Name:: php5_ppa
# Recipe:: from_ondrej
#
# Copyright (C) 2013 sawanoboly
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


execute "apt-get update" do
  action :nothing
  command "apt-get update"
end

apt_repository "ondrej-php-#{node["lsb"]["codename"]}" do
  uri "http://ppa.launchpad.net/ondrej/php5/ubuntu"
  distribution node["lsb"]["codename"]
  components ["main"]
  keyserver node["php5_ppa"]["keyserver"]
  key node["php5_ppa"]["key_ondrej"]
  action :add
  notifies :run, "execute[apt-get update]", :immediately
end
