#
# Cookbook Name::       hive
# Description::         Base configuration for hive
# Recipe::              default
# Author::              Philip (flip) Kromer - Infochimps, Inc
#
# Copyright 2009, Opscode, Inc.
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

unless( %w[sun oracle].include?(node['java']['install_flavor'].to_s))
  warn "Warning!! You are *strongly* recommended to use Sun Java for hive. Set node['java']['install_flavor'] = 'oracle' in a role -- right now it's '#{node['java']['install_flavor']}'"
end

include_recipe 'java'
include_recipe 'hadoop_cluster::add_cloudera_repo'

package "hadoop-hive"
