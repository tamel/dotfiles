function setup_nvim
    if command -q nvim
        source $XDG_CONFIG_HOME/fish/conf.d/nvim/session_vars.fish
    end
end
