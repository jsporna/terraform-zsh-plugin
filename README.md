terraform-zsh-plugin
====================

Plugin for Terraform, extendinf original oh-my-zsh plugin with aliases and autocompletion.

Terraform is a tool from Hashicorp for managing infrastucture as code in secure and efficient way.

# Requiremants

* [Terraform](https://www.terraform.io/downloads.html)

# Installation

* [Oh My Zsh](#oh-my-zsh)

## Oh My Zsh

1. Clone repository into `${ZSH_CUSTOM}/plugins` (by default `$ZSH_CUSTOM` points to `~/.oh-my-zsh/custom`)

```sh
git clone https://github.com/jsporna/terraform-zsh-plugin \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/terraform
```

2. Add te plugin to the list of plugins in `~/.zshrc` for Oh My Zsh to load:

```sh
plugins=(... terraform)
```

3. Start new  termianl session.

# Usage

* Type `terraform` or `tf` into your prompt and hit `TAB` to see available completion options
* When you type at the `-target` option it show the list of resources
