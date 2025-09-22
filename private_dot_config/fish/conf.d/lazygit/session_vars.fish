if not set -q __LAZYGIT_VARS_SOURCED
    set -xg __LAZYGIT_VARS_SOURCED 1

    set -xg LG_CONFIG_FILE $HOME/.config/lazygit/config.yml,$HOME/.config/lazygit/mauve.yml
end
