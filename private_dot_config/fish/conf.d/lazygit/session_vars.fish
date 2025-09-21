if not set -q __LAZYGIT_VARS_SOURCED
    set -xg __LAZYGIT_VARS_SOURCED 1

    set -xg LG_CONFIG_FILE $XDG_CONFIG_HOME/lazygit/config.yml,$XDG_CONFIG_HOME/lazygit/mauve.yml
end
