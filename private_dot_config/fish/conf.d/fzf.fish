function setup_fzf
    if command -q fzf
        source $XDG_CONFIG_HOME/fish/conf.d/fzf/session_vars.fish

        fzf --fish | source
    end
end
