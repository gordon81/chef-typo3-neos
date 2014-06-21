#
# Author:: Ingo Renner (<ingo@typo3.org>)
# Cookbook Name:: typo3-neos
# Recipe:: _source
#
# Copyright 2014, Ingo Renner
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


site_docroot = "#{node['apache']['docroot_dir']}/site-#{node['typo3-neos']['site_name']}"
#typo3_source_directory = "#{site_docroot}/typo3_src-#{node['typo3-neos']['version']}"

# set up TYPO3 directory structure
#directory "#{site_docroot}" do
#  owner node['apache']['user']
#  group node['apache']['group']
#  mode "0755"
#  recursive true
#  action :create
#end

# download TYPO3 source
unless File.directory? site_docroot
  execute "get Neon with Composer in Version #{node['typo3-neos']['version']}" do
    cwd "#{site_docroot}"
    command "composer create-project #{node['typo3-neos']['composerParam']} typo3/neos-base-distribution site-#{node['typo3-neos']['site_name']} #{node['typo3-neos']['version']} "
  end
end


