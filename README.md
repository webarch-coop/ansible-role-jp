# Webarchitects jp Ansible role

[![pipeline status](https://git.coop/webarch/jp/badges/main/pipeline.svg)](https://git.coop/webarch/jp/-/commits/main)

An Ansible role to install the latest version of [jp](https://github.com/jmespath/jp) from [GitHub](https://github.com/jmespath/jp/releases/latest) when the Debian distro is not [bookworm](https://packages.debian.org/bookworm/jp), for bookworm the `.deb` package is installed and the GitHub version is removed.

## Defaults

| Variable name        | Default value    | Comment                                                                              |
+----------------------+------------------+--------------------------------------------------------------------------------------+
| `jp`                 | `True`           | Tasks in this role are only run when this is `True`                                  |
| `jp_binary`          | `jp-linux-amd64` | The name of the binary from [GitHub](https://github.com/jmespath/jp/releases/latest) |

## Repo
 
The primary URL of this repo is [`https://git.coop/webarch/jp`](https://git.coop/webarch/jp) however it is also [mirrored to GitHub](https://github.com/webarch-coop/ansible-role-jp) and [available via Ansible Galaxy](https://galaxy.ansible.com/chriscroome/jp).

If you use this role please use a tagged release, see [the release notes](https://git.coop/webarch/jp/-/releases).

This role can also be used with the [localhost repo](https://git.coop/webarch/localhost) to install `jp` locally.
