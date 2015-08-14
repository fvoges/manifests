Puppet module mco_puppet

This module upgrades the puppet mcollective plugin on PE 3.8.1.

The upgraded plugin supports using splay with the agent daemon running.

**NOTE:** The module will fail the catalog compilation on any other PE version or if not using PE.


What does it change

It patches the puppet_enterprise module in /opt/puppet/share/puppet/modules so that it installs the upgraded version. This is the only way to upgrade the plugin, as any other method would be reverted on the next agent run.


