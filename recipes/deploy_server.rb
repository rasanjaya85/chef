#
# Cookbook Name:: wso2is
# Recipe:: deploy_server
#
# ----------------------------------------------------------------------------
#  Copyright 2005-2015 WSO2, Inc. http://www.wso2.org
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
# ----------------------------------------------------------------------------

#Add user for WSO2 daemon.
user "#{node["wso2is"]["user"]}" do
  comment node["wso2is"]["user_comment"]
  shell node["wso2is"]["user_shell"]
  supports :manage_home => true
end
