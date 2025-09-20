function setup_lazygit
    if command -q lazygit
        source $XDG_CONFIG_HOME/fish/conf.d/lazygit/alias.fish
        source $XDG_CONFIG_HOME/fish/conf.d/lazygit/session_vars.fish
    end
end
