ansible-role-terraform [![Build Status][img-build-status]][build-status]
=========

Installs a version of [Terraform][terraform].

Requirements
------------

This module downloads a 64-bit Linux Terraform binary. If support for multiple operating systems is desired, pull
requests are welcome!

Role Variables
--------------

<dl>
  <dt><code>version</code></dt>
  <dd>The version string of Terraform to install. Example: <code>0.8.6</code>.</dd>
</dl>

Dependencies
------------

None.

Example Playbook
----------------

Install Terraform:

```
 - hosts: servers
   roles:
     - role: terraform
```

Install a specific version of Terraform:

```
 - hosts: servers
   roles:
     - { role: terraform, version: "0.8.6" }
```

License
-------

MIT

 [build-status]: https://travis-ci.org/naftulikay/ansible-role-terraform
 [img-build-status]: https://travis-ci.org/naftulikay/ansible-role-terraform.svg?branch=master
 [terraform]: https://www.terraform.io
