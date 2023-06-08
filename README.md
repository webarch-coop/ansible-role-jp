# Webarchitects JMESPath Ansible role

[![pipeline status](https://git.coop/webarch/jp/badges/main/pipeline.svg)](https://git.coop/webarch/jp/-/commits/main)

An Ansible role to install the latest version of [jp](https://github.com/jmespath/jp) from [GitHub](https://github.com/jmespath/jp/releases/latest) when the Debian distro is not Bookworm, [for bookworm the `.deb` package](https://packages.debian.org/bookworm/jp) is installed and the GitHub version is removed.

<!-- BEGIN_ANSIBLE_DOCS -->

## Requirements

| Platform | Versions |
| -------- | -------- |
| Debian | bookworm, bullseye |
| Ununtu | jammy |

## Role Arguments

### Entrypoint: main

The main entry point for the jp role.

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| jp | Run the tasks in this role. | bool | yes | false |
| jp_binary | The jp binary version from GitHub. | str | yes | jp-linux-amd64 |
| jp_root_bin | The directory for the jp binary to be installed into as root. | str | yes | /usr/local/bin |
| jp_root_pipx_env | The pipx environment for root. | dict of 'jp_root_pipx_env' options | yes |  |
| jp_term | Install or remove JMESPath Terminal, jpterm. | bool | no | false |
| jp_term_community_version | The jmespath-community-terminal version to install. | str | no | 1.1.1 |
| jp_user_bin | The directory for the jp binary to be installed into as a regular user. | str | yes | ~/.local/bin |
| jp_user_pipx_env | The pipx environment for a regular user. | dict of 'jp_user_pipx_env' options | yes |  |

#### Options for main > jp_root_pipx_env

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| PIPX_HOME | The directory for the pipx venv for root. | str | yes | /opt/pipx |
| PIPX_BIN_DIR | The directory for the pipx binary symlink for root. | str | yes | /usr/local/bin |

#### Options for main > jp_user_pipx_env

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| PIPX_HOME | The directory for the pipx venv for a regular user. | str | yes | ~/.local/pipx |
| PIPX_BIN_DIR | The directory for the pipx binary symlink for a regular user. | str | yes | ~/.local/bin |

#### Choices for main > jp_binary

|Choice|
|---|
| jp-linux-386 |
| jp-linux-amd64 |
| jp-linux-arm-arm7 |
| jp-linux-arm64 |


## Dependencies
None.

<!-- END_ANSIBLE_DOCS -->

## JMESPath Terminal

This role doesn't install `jpterm` by default, when `jp_term` is set to `true`:

* On Debian Bullseye and Ubuntu Jammy this role will use `pip` to install [an old version of `setuptools`](https://github.com/jmespath/jmespath.terminal/issues/19#issuecomment-1156039074) and [jmespath.terminal](https://github.com/jmespath/jmespath.terminal).
* On Debian Bookworm this role will use `pipx` to install the fork, [jmespath-community-terminal](https://github.com/jmespath-community/jmespath.terminal).

## Repository

The primary URL of this repo is [`https://git.coop/webarch/jp`](https://git.coop/webarch/jp) however it is also [mirrored to GitHub](https://github.com/webarch-coop/ansible-role-jp) and [available via Ansible Galaxy](https://galaxy.ansible.com/chriscroome/jp).

If you use this role please use a tagged release, see [the release notes](https://git.coop/webarch/jp/-/releases).

This role can also be used with the [localhost repo](https://git.coop/webarch/localhost) to install `jp` locally.

## License

This role is released under [the same terms as Ansible itself](https://github.com/ansible/ansible/blob/devel/COPYING), the [GNU GPLv3](LICENSE).
