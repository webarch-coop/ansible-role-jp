# Variables

<!-- BEGIN_ANSIBLE_DOCS -->
For Ansible Role: jp

Ansible role for installing jp, the command line interface to JMESPath on Debian and Ubuntu.

Tags: debian, jp, jmespath, ubuntu

## Requirements

| Platform | Versions |
| -------- | -------- |
| Debian | bookworm, bullseye |
| Ubuntu | jammy |

## Defaults

See [defaults/main.yml](defaults/main.yml).

## Role Variables

### Entrypoint: main

The main entry point for the jp role.

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| jp | Run the tasks in this role. | bool | yes | false |
| jp_apt_role | Use the apt role for local_facts. | bool | yes | false |
| jp_bin | An internal variable for the bin directory to use for the jp binary. | str | no |  |
| jp_binary | The jp binary version from GitHub. | str | yes |  |
| jp_checksum | An internal variable for the checksum for the jp binary. | str | no |  |
| jp_checksums_b64encoded | An internal variable for the results from slurping the GPG signed checksums file. | dict | no |  |
| jp_download | An internal variable for the results of using get_url to download the jp binary from GitHub. | dict | no |  |
| jp_gpg_import | An internal variable for the results of running gpg --import for the JMESPath GPG public key. | dict | no |  |
| jp_gpg_list_keys | An internal variable for the results of running gpg --list-keys. | dict | no |  |
| jp_gpg_verify | An internal variable for the results of running gpg --verify. | dict | no |  |
| jp_headers | An internal variable for the results of the uri module doing a HEAD request for the latest release URL. | dict | no |  |
| jp_installed_version | An internal variable for the installed version of jp. | str | no |  |
| jp_pip_system_existing | An internal variable for the system PyPI packages present. | list of dicts of 'jp_pip_system_existing' options | no |  |
| jp_pip_system_list | An internal variable for the registering the result of pip list. | dict | no |  |
| jp_pip_user_existing | An internal variable for the user PyPI packages present. | list of dicts of 'jp_pip_user_existing' options | no |  |
| jp_pip_user_list | An internal variable for the registering the result of pip list --user. | dict | no |  |
| jp_pkgs | An internal list of required packages. | list of 'str' | yes |  |
| jp_pypi_jmespath_query | An internal JMESPath query. | str | yes |  |
| jp_pypi_pkg | An internal PyPi packages name. | str | no |  |
| jp_pypi_version_jmespath_query | An internal JMESPath query. | str | yes |  |
| jp_root_bin | The directory for the jp binary to be installed into as root. | str | yes |  |
| jp_root_download_dir | Directory to download files into when running as root. | str | yes |  |
| jp_root_pipx_env | The pipx environment for root. | dict of 'jp_root_pipx_env' options | yes |  |
| jp_root_pipx_path | An internal variable for requitering the results of stating the jpterm path. | dict | no |  |
| jp_term | Install or remove JMESPath Terminal, jpterm. | bool | no | false |
| jp_term_community_version | The jmespath-community-terminal version to install. | str | no | 1.1.1 |
| jp_tmp | An internal variable for a temp directory for downloading files. | str | no |  |
| jp_user_bin | The directory for the jp binary to be installed into as a regular user. | str | yes |  |
| jp_user_download_dir | Directory to download files into when running as user. | str | yes |  |
| jp_user_pipx_env | The pipx environment for a regular user. | dict of 'jp_user_pipx_env' options | yes |  |
| jp_verify | Verify variables that start with jp followed by an underscore using the argument specification. | bool | yes | false |
| jp_version | An internal variable for registering the results of running jp -v. | dict | no |  |
| jp_version_latest | An internal variable for the latest version of jp. | str | no |  |
| jp_which_jp | An internal variable for registering the results of running which jp. | dict | no |  |

#### Options for main > jp_pip_system_existing

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| name | An internal variable for the name of a system PyPI package. | str | yes |  |
| version | An internal variable for the version of a system PyPI package. | str | yes |  |

#### Options for main > jp_pip_user_existing

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| name | An internal variable for the name of a user PyPI package. | str | yes |  |
| version | An internal variable for the version of a user PyPI package. | str | yes |  |

#### Options for main > jp_root_pipx_env

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| PIPX_HOME | The directory for the pipx venv for root. | str | yes |  |
| PIPX_BIN_DIR | The directory for the pipx binary symlink for root. | str | yes |  |

#### Options for main > jp_user_pipx_env

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| PIPX_HOME | The directory for the pipx venv for a regular user. | str | yes |  |
| PIPX_BIN_DIR | The directory for the pipx binary symlink for a regular user. | str | yes |  |

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
