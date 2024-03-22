#!/bin/zsh

eval "$(/opt/homebrew/bin/brew shellenv)"

# Don't allow Python bytecode files to pollute directories.
export PYTHONDONTWRITEBYTECODE=1
