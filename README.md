# Webarchitects JMESPath Ansible role

[![pipeline status](https://git.coop/webarch/jp/badges/main/pipeline.svg)](https://git.coop/webarch/jp/-/commits/main)

An Ansible role to install the latest version of [jp](https://github.com/jmespath/jp) from [GitHub](https://github.com/jmespath/jp/releases/latest) when the Debian distro is not Bookworm, [for bookworm the `.deb` package](https://packages.debian.org/bookworm/jp) is installed and the GitHub version is removed.

See the [VARIABLES.md](VARIABLES.md) file for automatically generated documentation for the role variables.

## JMESPath Terminal

This role doesn't install `jpterm` by default, when `jp_term` is set to `true` this role will use `pipx` to install the forked version, [jmespath-community-terminal](https://github.com/jmespath-community/jmespath.terminal) as this version does not require an old version of `setuptools`.

## Repository

The primary URL of this repo is [`https://git.coop/webarch/jp`](https://git.coop/webarch/jp) however it is also [mirrored to GitHub](https://github.com/webarch-coop/ansible-role-jp) and [available via Ansible Galaxy](https://galaxy.ansible.com/chriscroome/jp).

If you use this role please use a tagged release, see [the release notes](https://git.coop/webarch/jp/-/releases).

This role can also be used with the [localhost repo](https://git.coop/webarch/localhost) to install `jp` locally.

## License

Copyright 2019-2023 Chris Croome, &lt;[chris@webarchitects.co.uk](mailto:chris@webarchitects.co.uk)&gt;.

This role is released under [the same terms as Ansible itself](https://github.com/ansible/ansible/blob/devel/COPYING), the [GNU GPLv3](LICENSE).
