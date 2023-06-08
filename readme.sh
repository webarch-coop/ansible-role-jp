#!/usr/bin/env bash
#
# This script uses ansible-role-docs to genarate the README.md
#
# ansible-role-docs can be installed using:
#
# pipx install git+https://gitlab.com/kpfleming/ansible-role-docs.git
#
# The results use the README.j2 template.

ansible-role-docs --output-file README.md --output-mode replace --output-template README.j2 . markdown
