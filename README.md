# Kali Linux based Debian/Jessie

## remark

- Maybe, this playbook is not enough idempotency. So you might not execute this playbook at twice, and more.
- This playbook is written for Debian/Jessie based environment. So you should get to a machine which is ready for Debian/Jessie environment.
 - Vagrant: https://wiki.debian.org/Vagrant
 - AWS: https://wiki.debian.org/Cloud/AmazonEC2Image

## require

- To be several packages installed.
 - `Ansible`
 - `Serverspec`
 - `ansible_spec`
- To set login configuration to `~/.ssh/config` for servers.

## test

```
$ rake -T    # show available targets
$ rake serverspec:kali-linux-based-debian
```

## provision

```
$ ansible-playbook -i hosts site.yml
```

## references

- [How to build a Kali HVM AMI From Scratch | Blackfin Security](http://www.blackfinsecurity.com/how-to-build-a-kali-hvm-ami-from-scratch/)
- [How to enable RDP in Kali Linux - MSitPros Blog](https://msitpros.com/?p=3209)
