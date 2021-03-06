#
# Author:: Ingo Renner (<ingo@typo3.org>)
# Cookbook Name:: typo3-neos
# Attributes:: default
#
# Copyright 2013, Ingo Renner
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

# General settings
default['typo3-neos']['version'] = "dev-master" # master, 6.0, 6.0.4
default['typo3-neos']['composerParam'] = "--dev --keep-vcs" # --no-dev
default['typo3-neos']['db']['database'] = "typo3db"
default['typo3-neos']['db']['user'] = "typo3user"
default['typo3-neos']['db']['password'] = "typo3password"
default['typo3-neos']['webserver'] = "apache2"
default['typo3-neos']['site_name'] = 'typo3'

default['typo3-neos']['server_name'] = [node['fqdn']]
default['typo3-neos']['server_aliases'] = []

