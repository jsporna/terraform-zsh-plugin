function tf_prompt_info() {
    # dont show 'default' workspace in home dir
    [[ "$PWD" == ~ ]] && return
    # check if in terraform dir
    if [ -d .terraform ]; then
      workspace=$(terraform workspace show 2> /dev/null) || return
      echo "[${workspace}]"
    fi
}

alias tf='terraform'

alias tfi='tf init'

alias tfp='tf plan'
alias tfa='tf apply'
alias tfd='tf destroy'

alias tfip='tfi && tfp'
alias tfia='tfi && tfa'
alias tfid='tfi && tfd'

alias tf.12u='tf 0.12upgrade'
alias tf.13u='tf 0.13upgrade'

alias tfc='tf console'
alias tfg='tf graph'
alias tfget='tf get'
alias tfimp='tf import'
alias tfo='tf output'
alias tfprov='tf providers'
alias tfpp='tf push'
alias tfr='tf refresh'
alias tfs='tf show'
alias tfst='tf state'
alias tft='tf taint'
alias tfunt='tf untaint'
alias tfv='tf validate'
alias tfver='tf version'
alias tfw='tf workspace'

# Danger zone
alias tfa!='tfa -auto-approve'
alias tfia!='tfi && tfa!'

alias tfd!='tfd -auto-approve'
alias tfid!='tfi && tfd!'

complete -o nospace -C $(which terraform) terraform

