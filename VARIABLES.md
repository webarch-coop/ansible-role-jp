<!-- BEGIN_ANSIBLE_DOCS -->
# Ansible Role: jp

Ansible role for installing jp, the command line interface to JMESPath on Debian and Ubuntu.


Tags: debian, jp, jmespath, ubuntu

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
| jp_binary | The jp binary version from GitHub. | str | yes |  |
| jp_pkgs | An internal list of required packages. | list of 'str' | yes |  |
| jp_pypi_jmespath_query | An internal JMESPath query. | str | yes |  |
| jp_pypi_pkg | An internal PyPi packages name. | str | no |  |
| jp_pypi_version_jmespath_query | An internal JMESPath query. | str | yes |  |
| jp_root_bin | The directory for the jp binary to be installed into as root. | str | yes |  |
| jp_root_pipx_env | The pipx environment for root. | dict of 'jp_root_pipx_env' options | yes |  |
| jp_term | Install or remove JMESPath Terminal, jpterm. | bool | no | false |
| jp_term_community_version | The jmespath-community-terminal version to install. | str | no | 1.1.1 |
| jp_user_bin | The directory for the jp binary to be installed into as a regular user. | str | yes |  |
| jp_user_pipx_env | The pipx environment for a regular user. | dict of 'jp_user_pipx_env' options | yes |  |

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

## Example Playbook

```
- hosts: all
  tasks:
    - name: Importing role: jp
      ansible.builtin.import_role:
        name: jp
      vars:
        
        
        jp: # required, type: bool
        
        
        jp_binary: # required, type: str
        
        
        jp_pkgs: # required, type: list
        
        
        jp_pypi_jmespath_query: # required, type: str
        
        
        
        jp_pypi_version_jmespath_query: # required, type: str
        
        
        jp_root_bin: # required, type: str
        
        
        jp_root_pipx_env: # required, type: dict
        
        
        
        
        jp_user_bin: # required, type: str
        
        
        jp_user_pipx_env: # required, type: dict
        
```

<!-- END_ANSIBLE_DOCS -->
